require 'bundler'
Bundler.require

core_root = File.open(File.expand_path('../core.root', __FILE__), &:readline).delete("\n").gsub("\\", '/')
require File.join(core_root, 'config/initializers')

Dir[ File.join(core_root, 'app/models/*.rb') ].each{|file| require file }
Dir[ File.join(core_root, 'app/helpers/*.rb') ].each{|file| require file }

require File.expand_path('../establish_connection', __FILE__)
# require 'puma'
# configure { 
#   set :server, :puma 
# }

configure :development do
  require 'sinatra/reloader'
end


get '/s/weixin/access' do
  logger.error params
  # 微信加密签名
  signature = params[:signature]
  # 时间戳
  timestamp = params[:timestamp]
  # 随机数
  nonce = params[:nonce]
  # 随机字符串 
  echostr = params[:echostr]

  token = Settings.weixin_token
  token = "ximalaya23" if token.nil?
  tmpStr = [token,timestamp,nonce]
  tmpStr = tmpStr.sort 
  tmpStr = tmpStr.join
  tmpStr = Digest::SHA1.hexdigest tmpStr

  if tmpStr == signature
    return echostr
  end

end

post '/s/weixin/access' do

  if params[:xml].nil?
    xml = env['rack.input'].read
    puts env['rack.input']
    params[:xml] = {
      ToUserName: xml.scan(/<ToUserName><!\[CDATA\[(.*)\]\]><\/ToUserName>/).flatten.join,
      FromUserName: xml.scan(/<FromUserName><!\[CDATA\[(.*)\]\]><\/FromUserName>/).flatten.join,
      MsgType: xml.scan(/<MsgType><!\[CDATA\[(.*)\]\]><\/MsgType>/).flatten.join,
      CreateTime: xml.scan(/<CreateTime>(\d+)<\/CreateTime>/).flatten.join,
      MsgId: xml.scan(/<MsgId>(\d+)<\/MsgId>/).flatten.join
    }
    if params[:xml][:MsgType] == "text"
      params[:xml][:Content] = xml.scan(/<Content><!\[CDATA\[(.*)\]\]><\/Content>/).flatten.join
    elsif params[:xml][:MsgType] == "event"
      params[:xml][:Event] = xml.scan(/<Event><!\[CDATA\[(.*)\]\]><\/Event>/).flatten.join
    end
  end

  puts params
  
  xml = params[:xml]
  msgType = xml[:MsgType]
  fromUserName = xml[:FromUserName]
  toUserName = xml[:ToUserName]
  createTime =xml[:CreateTime]
  if msgType = 'event'
    event = xml[:Event]
    if event == 'subscribe'
      msg = "Hi 欢迎来到喜马拉雅微信平台！
          \n喜马拉雅，重新发明电台！你可以：随时随地，听我想听！也可以：轻松创建个人电台，随时分享好声音！
          \n回复1，今日专题推荐尽在掌握
          \n回复2，随心听，随机返回一条好声音，想听什么就来碰碰运气吧
          \n回复3，所有精彩频道一手网罗
          \n回复4，返回手机客户端下载地址
          \n回复h或help，查看使用帮助
          \n回复任意关键字，收听任何想听的电台，如回复'财经郎眼'，返回财经郎眼的电台；现在就来试试吧，觉得好也要推荐给朋友喔"
      xml = "<xml>"
      xml << "\n<ToUserName>#{fromUserName}</ToUserName>"
      xml << "\n<FromUserName>#{toUserName}</FromUserName>"
      xml << "\n<CreateTime>#{createTime}</CreateTime>"
      xml << "\n<MsgType>text</MsgType>"
      xml << "\n<Content>#{msg}</Content>"
      xml << "\n<FuncFlag>1</FuncFlag>"
      xml << "\n</xml>"
      puts "subscribe ok"
    elsif event == 'unsubscribe'
      puts "unsubscribe ok"
    end
  end

  content = xml[:Content].downcase
  #图片链接
  picUrl = xml[:PicUrl]
  #消息id，64位整型
  msgId  =xml[:MsgId]

  # if content == "1"
  #   msg = Time.now
  #   xml = "<xml>"
  #   xml << "\n<ToUserName>"+fromUserName+"</ToUserName>"
  #   xml << "\n<FromUserName>"+toUserName+"</FromUserName>"
  #   xml << "\n<CreateTime>#{Time.now.to_i}</CreateTime>"
  #   xml << "\n<MsgType>text</MsgType>"
  #   xml << "\n<Content>#{msg}</Content>"
  #   xml << "\n<FuncFlag>1</FuncFlag>"
  #   xml << "\n</xml>"
  # else
  #   msg = "Hi 欢迎来到喜马拉雅微信平台！
  #         \n喜马拉雅，重新发明电台！你可以：随时随地，听我想听！也可以：轻松创建个人电台，随时分享好声音！
  #         \n回复1，今日专题推荐尽在掌握
  #         \n回复2，随心听，随机返回一条好声音，想听什么就来碰碰运气吧
  #         \n回复3，所有精彩频道一手网罗
  #         \n回复4，返回手机客户端下载地址
  #         \n回复h或help，查看使用帮助
  #         \n回复任意关键字，收听任何想听的电台，如回复'财经郎眼'，返回财经郎眼的电台；现在就来试试吧，觉得好也要推荐给朋友喔"
  #   xml = "<xml>"
  #   xml << "\n<ToUserName>"+fromUserName+"</ToUserName>"
  #   xml << "\n<FromUserName>"+toUserName+"</FromUserName>"
  #   xml << "\n<CreateTime>#{Time.now.to_i}</CreateTime>"
  #   xml << "\n<MsgType>text</MsgType>"
  #   xml << "\n<Content>#{msg}</Content>"
  #   xml << "\n<FuncFlag>1</FuncFlag>"
  #   xml << "\n</xml>"
  # end

  return xml


end
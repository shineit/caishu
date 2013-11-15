module MessageHelper
	def post_weixin_access
		content_type :xml
		# 配置参数
	  if params[:xml].nil?
	    xml = env['rack.input'].read
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
	  
	  xml = params[:xml]
	  msgType = xml[:MsgType]
	  fromUserName = xml[:FromUserName]
	  toUserName = xml[:ToUserName]
	  createTime =xml[:CreateTime]

	  if msgType == 'event'
	    event = xml[:Event]
	    if event == 'subscribe'
	      msg = "Hi 欢迎来到顾益峰的个人微信频道,能来到这里的，只有两种人，一种是我的QQ好友，另一种就是我的微信好友！
	          \n都是一家人，这里你可以很放松！
	          \n回复1，听个笑话
	          \n回复g，随机挑选5个美女信息
	          \n回复b，随机挑选5个帅哥信息
	          \n回复其他内容，有你意想不到的内容喔~"
	      xml = "<xml>"
	      xml << "\n<ToUserName>#{fromUserName}</ToUserName>"
	      xml << "\n<FromUserName>#{toUserName}</FromUserName>"
	      xml << "\n<CreateTime>#{createTime}</CreateTime>"
	      xml << "\n<MsgType>text</MsgType>"
	      xml << "\n<Content>#{msg}</Content>"
	      xml << "\n<FuncFlag>1</FuncFlag>"
	      xml << "\n</xml>"
	      puts "subscribe ok"
	      return xml
	    elsif event == 'unsubscribe'
	      puts "unsubscribe ok"
	    end
	  end

	  if msgType == 'text'
	    content = xml[:Content]

	    if content == "1"
	      str = rand(380)
	      joke = Joke.find(str)

	      xml = "<xml>"
	      xml << "\n<ToUserName>#{fromUserName}</ToUserName>"
	      xml << "\n<FromUserName>#{toUserName}</FromUserName>"
	      xml << "\n<CreateTime>#{createTime}</CreateTime>"
	      xml << "\n<MsgType>text</MsgType>"
	      xml << "\n<Content>#{joke.content}</Content>"
	      xml << "\n<FuncFlag>1</FuncFlag>"
	      xml << "\n</xml>"

	      return xml
	    elsif content == "g"
	      goodfriends = Goodfriend.where(:gender => 2)
	      results = goodfriends.sample(2)

	      xml = "<xml>"
	      xml << "\n<ToUserName>#{fromUserName}</ToUserName>"
	      xml << "\n<FromUserName>#{toUserName}</FromUserName>"
	      xml << "\n<CreateTime>#{createTime}</CreateTime>"
	      xml << "\n<MsgType>news</MsgType>"
	      xml << "\n<ArticleCount>3</ArticleCount>"
	      xml << "\n<Articles>"

	      xml << "\n<item>"
	      xml << "\n<Title>相信缘分</Title>"
	      xml << "\n<PicUrl>http://static.menghuanwd.cn/img/a.jpg</PicUrl>"
	      xml << "\n<Url>http://m.menghuanwd.cn</Url>"
	      xml << "\n</item>"

	      results.each do |result|
	        xml << "\n<item>"
	        xml << "\n<Title>#{result.truth_name}的信息</Title>"
	        xml << "\n<PicUrl>"+result.photo+"</PicUrl>"
	        xml << "\n<Url>http://weixin.menghuanwd.cn/weixin/show?id="+result.id.to_s+"</Url>"
	        xml << "\n</item>"
	      end

	      xml << "\n</Articles>"
	      xml << "\n</xml>"

	      return xml
	    elsif content == "b"
	      goodfriends = Goodfriend.where(:gender => 1)
	      results = goodfriends.sample(2)

	      xml = "<xml>"
	      xml << "\n<ToUserName>#{fromUserName}</ToUserName>"
	      xml << "\n<FromUserName>#{toUserName}</FromUserName>"
	      xml << "\n<CreateTime>#{createTime}</CreateTime>"
	      xml << "\n<MsgType>news</MsgType>"
	      xml << "\n<ArticleCount>3</ArticleCount>"
	      xml << "\n<Articles>"

	      xml << "\n<item>"
	      xml << "\n<Title>全部好友信息</Title>"
	      xml << "\n<Description>以上信息百分之九十准确</Description>"
	      xml << "\n<PicUrl>http://static.menghuanwd.cn/img/a.jpg</PicUrl>"
	      xml << "\n<Url>http://m.menghuanwd.cn</Url>"
	      xml << "\n</item>"

	      results.each do |result|
	        xml << "\n<item>"
	        xml << "\n<Title>#{result.truth_name}的信息</Title>"
	        xml << "\n<PicUrl>"+result.photo+"</PicUrl>"
	        xml << "\n<Url>http://weixin.menghuanwd.cn/weixin/show?id="+result.id.to_s+"</Url>"
	        xml << "\n</item>"
	      end
	      xml << "\n</Articles>"
	      xml << "\n</xml>"
	      
	      return xml
	    else
	      
	    end

	  end
	end

end
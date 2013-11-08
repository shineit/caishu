require 'base64'
require 'uri'
# require 'md5'
puts code = Base64.encode64(Time.now.to_i.to_s)
puts code = URI.encode(Time.now.to_i.to_s)
# puts code = MD5.hexdigest(Time.now.to_i.to_s)
puts system("ps -ef|grep queue.subscribe")
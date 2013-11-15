module AuthHelper
	def get_weixin_access
	  signature = params[:signature]
	  timestamp = params[:timestamp]
	  nonce = params[:nonce]
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
end
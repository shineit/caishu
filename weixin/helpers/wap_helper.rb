module WapHelper
	def get_weixin_show
		puts params
		@goodfriend = Goodfriend.find(params[:id])
		
		erb :'wap/show'
	end

end
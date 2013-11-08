#encoding: utf-8
class MessagesController < ApplicationController
	def index
		@message = Message.where(:status => 0)
		@number = @message.size
	end

	def	destroy
		@message = Message.find(params[:id])
		@message.destroy
		render text: '删除成功'
	end

	def existence
		@message = Message.where(:status => 1)
		@number = @message.size
	end

	def update
		@message = Message.where(:content => params[:message][:content]).first
		@message.status = 1
		@message.response = params[:message][:response]
		@message.save
		redirect_to '/weixin/messages'
	end

	def edit
		@message = Message.find(params[:id])
	end

end 
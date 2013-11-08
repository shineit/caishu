class WeblinksController < ApplicationController
	def index
		@weblinks = Weblink.all
	end

	def new
		@weblink = Weblink.new
	end

	def delete
		weblink = Weblink.find(params[:id])
		weblink.destroy

		redirect_to action: :index
	end

	def create
		weblink = Weblink.create(params[:weblink])
		redirect_to action: :index
	end
end
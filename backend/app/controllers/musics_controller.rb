class MusicsController < ApplicationController
	def index
		@musics = Music.all
	end

	def new
		@music = Music.new
	end

	def delete
		music = Music.find(params[:id])
		music.destroy

		redirect_to action: :index
	end

	def create
		music = Music.create(params[:music])
		redirect_to action: :index
	end
end
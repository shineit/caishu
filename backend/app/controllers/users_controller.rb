class UsersController < ApplicationController

	def index
    @user = User.new
		render "users/index",:layout => false
	end

  # 验证
  def create
    username = params[:user][:username]
    password = params[:user][:password]
    user = User.where(:username => username, :password => password).first
    if user
      session[:user] = user.username
      redirect_to "/categories"
    else
      redirect_to '/users'
    end
  end
end
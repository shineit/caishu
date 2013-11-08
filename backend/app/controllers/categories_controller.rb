class CategoriesController < ApplicationController
  before_filter :check_auth

  def check_auth
    if session[:user] == nil
      redirect_to '/users'
    end
  end

	def index
		@categories = Category.all
	end

  def new
    @category = Category.new
  end

  def create
     Category.create(params[:category])
     redirect_to '/categories'
  end

  def edit
    @category = Category.find(params[:id])
  end

  def delete
    category = Category.find(params[:id])
    category.destroy
    redirect_to '/categories'
  end

  def update
    @category = Category.find(params[:id])
    @category.update_attributes(params[:category])
    redirect_to '/categories'
  end

end
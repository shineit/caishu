class PhilosophiesController < ApplicationController
  def index
    @philosophies = Philosophy.all
  end

  def new
    @philosophy = Philosophy.new
  end

  def create
    Philosophy.create(params[:philosophy])
    redirect_to '/philosophies'
  end

  def edit
    @philosophy = Philosophy.find(params[:id])
  end

  def delete
    philosophy = Philosophy.find(params[:id])
    philosophy.destroy
    redirect_to '/philosophies'
  end

  def update
    @philosophy = Philosophy.find(params[:id])
    @philosophy.update_attributes(params[:philosophy])
    redirect_to '/philosophies'
  end
end
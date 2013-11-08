class EssaysController < ApplicationController
  def index
    @essays = Essay.all
  end

  def new
    @essay = Essay.new
  end

  def create
    Essay.create(params[:essay])
    redirect_to '/essays'
  end

  def edit
    @essay = Essay.find(params[:id])
  end

  def delete
    essay = Essay.find(params[:id])
    essay.destroy
    redirect_to '/essays'
  end

  def update
    @essay = Essay.find(params[:id])
    @essay.update_attributes(params[:essay])
    redirect_to '/essays'
  end
end
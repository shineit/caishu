class NoteCategoriesController < ApplicationController

  def index
    @note_categories = NoteCategory.all
  end

  def new
    @note_category = NoteCategory.new
  end

  def create
    note_category = NoteCategory.create(params[:note_category])
    redirect_to '/note_categories'
  end

  def edit
    @note_category = NoteCategory.find(params[:id])
  end

  def delete
    note_category = NoteCategory.find(params[:id])
    note_category.destroy

    redirect_to '/note_categories'
  end

  def update
    @note_category = NoteCategory.find(params[:id])
    @note_category.update_attributes(params[:note_category])
    redirect_to '/note_categories'
  end

end
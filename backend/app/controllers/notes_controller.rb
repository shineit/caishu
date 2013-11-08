class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def new
    note_category = NoteCategory.all
    @note_categories = []

    note_category.each do |note_category|
      arr_tmp = []
      arr_tmp << note_category.name << note_category.id
      @note_categories << arr_tmp
    end
    @note = Note.new
  end

  def create
    Note.create(params[:note])
    redirect_to '/notes'
  end

  def edit
    note_category = NoteCategory.all
    @note_categories = []

    note_category.each do |note_category|
      arr_tmp = []
      arr_tmp << note_category.name << note_category.id
      @note_categories << arr_tmp
    end
    
    @note = Note.find(params[:id])
  end

  def delete
    note = Note.find(params[:id])
    note.destroy
    redirect_to '/notes'
  end

  def update
    @note = Note.find(params[:id])
    @note.update_attributes(params[:note])
    redirect_to '/notes'
  end
end
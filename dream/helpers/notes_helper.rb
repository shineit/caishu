module NotesHelper
	def get_notes
    @note_categories = NoteCategory.all
    if params[:id]
      @notes = Note.where(:note_category_id => params[:id])
      @note_category = NoteCategory.find(params[:id]).name
    else
      @notes = Note.order("created_at desc").limit(10)
    end

	end

  def get_note_show
    @note_categories = NoteCategory.all
    @note = Note.find(params[:id])
    @note_category = NoteCategory.find(@note.note_category_id)
  end
end
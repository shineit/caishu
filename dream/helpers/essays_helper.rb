module EssaysHelper
	def get_essays
	    @essays = Essay.all
	  end

	  def get_essay_show
	    @essay = Essay.find(params[:id])
	  end

end
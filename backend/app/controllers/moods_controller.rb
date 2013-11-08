class MoodsController < ApplicationController
	def index
		@moods = Mood.order("created_at desc")
	end

	def new
		@mood = Mood.new
	end

	def create

    Mood.create(params[:mood])
    
    time = Time.now.to_s[0,7]
    mood_category = MoodCategory.where(:name => time)

    if mood_category.blank?
      MoodCategory.create(:name => time)
    end

    redirect_to '/moods'
	end

  def edit
    @mood = Mood.find(params[:id])
  end

  def delete
    mood = Mood.find(params[:id])
    mood.destroy
    redirect_to '/moods'
  end

  def update
    @mood = Mood.find(params[:id])
    @mood.update_attributes(params[:mood])
    redirect_to '/moods'
  end

end
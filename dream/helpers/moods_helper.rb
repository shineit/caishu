module MoodsHelper
	def get_moods
		date = params[:date]
		@local_day = date
		if date
			y = date.split("-")
			a,b = y[0],y[1]
			date1 = Time.local(a,b)
			date1 = Time.local(a,b)
			date2 = date1 + 1.month
			@moods = Mood.where("created_at > ? and created_at < ?",date1,date2).order("created_at desc")
		else
			g = Time.now.to_s[0,7]
			y1 = g.split("-")
			a1,b1 = y1[0],y1[1]
			datenews = Time.local(a1,b1)
			@moods = Mood.where("created_at > ?",datenews).order("created_at desc")
			@local_day = Time.now.to_s[0,7]
		end

		@records = MoodCategory.order("created_at desc")
	end

	def get_mood_show
		@records = MoodCategory.order("created_at desc")
		@mood = Mood.find(params[:id])
		time = @mood.created_at
		@local_day = time.to_s[0,7]
	end
end
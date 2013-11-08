class Mood < ActiveRecord::Base
  attr_accessible :content, :mood_category_id, :photo_mood_id, :title
end

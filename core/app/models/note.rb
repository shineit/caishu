class Note < ActiveRecord::Base
  attr_accessible :content, :note_category_id, :title
end

class PhotoDetail < ActiveRecord::Base
  attr_accessible :click_times, :download_times, :photo_id
  belongs_to :photo
end

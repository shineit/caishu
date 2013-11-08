class Photo < ActiveRecord::Base
  attr_accessible :alias_name, :name, :photo_category_id, :url
  has_one :photo_detail
end

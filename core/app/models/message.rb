class Message < ActiveRecord::Base
  attr_accessible :content, :response, :status
end

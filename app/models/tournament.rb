class Tournament < ActiveRecord::Base
  attr_accessible :api_id, :name, :url
  
  has_many :matches
end

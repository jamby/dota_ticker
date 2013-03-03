class Team < ActiveRecord::Base
  attr_accessible :api_teamid, :country, :logo, :team_name
  
  has_many :matches
  has_many :players
end

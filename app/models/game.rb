class Game < ActiveRecord::Base
  attr_accessible :match_id, :winner
  
  belongs_to :match
end

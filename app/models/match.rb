class Match < ActiveRecord::Base
  attr_accessible :start_time, :workflow_state, :team1_id, :team2_id
  
  belongs_to :tournament
  has_many :games
  has_one :team1, through: :team
  has_one :team2, through: :team
end

class Match < ActiveRecord::Base
  attr_accessible :start_time, :workflow_state, :team1_id, :team2_id
  
  belongs_to :tournament
  has_many :games

  belongs_to :team1, class_name: "Team", foreign_key: "team1_id"
  belongs_to :team2, class_name: "Team", foreign_key: "team2_id"
end

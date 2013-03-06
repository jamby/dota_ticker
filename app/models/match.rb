class Match < ActiveRecord::Base
  include Workflow
  attr_accessible :start_time, :workflow_state, :team1_id, :team2_id, :tournament_id
  
  belongs_to :tournament
  has_many :games

  belongs_to :team1, class_name: "Team", foreign_key: "team1_id"
  belongs_to :team2, class_name: "Team", foreign_key: "team2_id"
  
  #############################################################################
  ############################# WORKFLOW STATES ###############################
  #############################################################################
  
  workflow do
    state :match_unplayed do
      event :now_playing, :transitions_to => :match_playing
    end
    state :match_playing do
      event :now_finished, :transitions_to => :match_finished
    end
    state :match_finished
  end
end

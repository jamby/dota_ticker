class Team < ActiveRecord::Base
  attr_accessible :api_teamid, :country, :logo, :team_name, :team_tag
  
  has_many :players
  
  def matches
    Match.where(team2_id: self.id) + Match.where(team1_id: self.id)
  end
end

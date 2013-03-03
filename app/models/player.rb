class Player < ActiveRecord::Base
  attr_accessible :account_id, :handle, :team_id
  
  belongs_to :team
end

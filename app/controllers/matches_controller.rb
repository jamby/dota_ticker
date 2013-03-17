class MatchesController < ApplicationController
  
  def index
    @matches = Match.finished
    @matches.sort_by_start_time
  end
end

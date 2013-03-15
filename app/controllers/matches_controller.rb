class MatchesController < ApplicationController
  
  def index
    @matches = Match.finished
  end
end

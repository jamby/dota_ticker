class HomeController < ApplicationController
  
  def index
    @matches = Match.is_upcoming_or_live
  end
end

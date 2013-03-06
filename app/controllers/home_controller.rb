class HomeController < ApplicationController
  
  def index
    @matches = Match.upcoming
  end
end

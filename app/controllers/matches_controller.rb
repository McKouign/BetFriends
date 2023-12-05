class MatchesController < ApplicationController
  #skip_before_action :authenticate_user!, only: [ :index ]


  def index
    @matches = Match.all
    @users = User.all
    @bet = Bet.new
  end
end

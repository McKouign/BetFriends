class MatchesController < ApplicationController
  #skip_before_action :authenticate_user!, only: [ :index ]
  # before_action :after_sign_in


  def index
    @matches = Match.all
    @users = User.all
    @bet = Bet.new
  end



end

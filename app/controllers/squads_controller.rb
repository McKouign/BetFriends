class SquadsController < ApplicationController
  def show
    @matches = Match.all
    @squad = Squad.find(params[:id])
    @squad_user_bets = @squad.users.map(&:bets).flatten
  end
end

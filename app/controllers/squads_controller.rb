class SquadsController < ApplicationController

  def show
    @matches = Match.all
    @squad = Squad.find(params[:id])

  end
end

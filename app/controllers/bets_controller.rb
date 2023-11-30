class BetsController < ApplicationController

  def create
    @bet = Bet.new(bet_params)
    @bet.user = current_user
    raise
    if @bet.save
      redirect_to matches_path
    else
      @matches = Match.all
      @users = User.all
      render "matches/index", status: :unprocessable_entity
    end
  end

  def update
    @bet = Bet.find(params[:id])
    if @bet.update(bet_params)
      redirect_to matches_path
    else
      render :update, status: :unprocessable_entity
    end
  end

  def destroy
  end

  private

  def bet_params
    params.require(:bet).permit(:user_reward_id, :participation_id, :progress, :match_id)
  end
end

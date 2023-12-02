class UserRewardsController < ApplicationController

  def create
    @user_reward = UserReward.new(user_reward_params)
    raise
    @user_reward.user = current_user
    if @user_reward.save
      redirect_to rewards_path
    else
      @rewards = Reward.all
      @user_rewards = UserReward.all
      render "rewards/index", status: :unprocessable_entity
    end
  end
  private

  def user_reward_params
    params.require(:user_reward).permit(:reward_id, :progress, :target_id)
  end
end

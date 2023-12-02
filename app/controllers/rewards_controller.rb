class RewardsController < ApplicationController
  def index
      @rewards = Reward.all
      @user_rewards = UserReward.all

      #@reward = Reward.find([:id])
  end
end

class RewardsController < ApplicationController
  def index
      @rewards = Reward.all
      @user_rewards = UserReward.all

      @total_rewards = Reward.total_rewards

      def new
        @user_reward = UserReward.new
        @user_reward.reward = Reward.find(params[:reward_id])
      end
  end
end

class ChangeProgressForUserRewards < ActiveRecord::Migration[7.1]
  def change
    change_column :user_rewards, :progress, :integer, default: 0
  end
end

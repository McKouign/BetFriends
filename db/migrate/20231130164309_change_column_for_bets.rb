class ChangeColumnForBets < ActiveRecord::Migration[7.1]
  def change
    change_column :bets, :user_reward_id, :integer, null: true
  end
end

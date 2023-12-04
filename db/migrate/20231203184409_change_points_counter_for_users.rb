class ChangePointsCounterForUsers < ActiveRecord::Migration[7.1]
  def change
    change_column :users, :points_counter, :integer, default: 0
  end
end

class ChangeProgresstoBets < ActiveRecord::Migration[7.1]
  def change
    change_column :bets, :progress, :integer, default: 0
  end
end

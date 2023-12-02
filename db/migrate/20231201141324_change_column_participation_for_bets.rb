class ChangeColumnParticipationForBets < ActiveRecord::Migration[7.1]
  def change
    change_column :bets, :participation_id, :integer, null: true
  end
end

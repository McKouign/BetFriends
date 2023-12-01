class CreateBets < ActiveRecord::Migration[7.1]
  def change
    create_table :bets do |t|
      t.integer :progress
      t.references :match, null: false, foreign_key: true
      t.references :participation, null: true, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :user_reward, null: true, foreign_key: true

      t.timestamps
    end
  end
end

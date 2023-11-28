class CreateUserRewards < ActiveRecord::Migration[7.1]
  def change
    create_table :user_rewards do |t|
      t.integer :progress
      t.references :user, null: false, foreign_key: true
      t.references :reward, null: false, foreign_key: true
      t.references :target, null: false, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end

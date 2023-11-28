class AddNicknameAvatarPointsCounter < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :nickname, :string
    add_column :users, :avatar, :text
    add_column :users, :points_counter, :integer
    add_reference :users, :squad, null: false, foreign_key: true
  end
end

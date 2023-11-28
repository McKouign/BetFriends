class CreateRewards < ActiveRecord::Migration[7.1]
  def change
    create_table :rewards do |t|
      t.string :title
      t.text :description
      t.string :method_name
      t.integer :price

      t.timestamps
    end
  end
end

class CreateMatches < ActiveRecord::Migration[7.1]
  def change
    create_table :matches do |t|
      t.string :sport
      t.datetime :date
      t.boolean :funbet

      t.timestamps
    end
  end
end

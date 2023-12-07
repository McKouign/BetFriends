class AddColumnLogoToTeam < ActiveRecord::Migration[7.1]
  def change
    add_column :teams, :logo, :string
  end
end

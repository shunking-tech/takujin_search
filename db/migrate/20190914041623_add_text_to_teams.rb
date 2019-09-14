class AddTextToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :text, :string
    change_column_null :teams, :text, false
  end
end

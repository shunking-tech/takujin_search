class RemovePurposeFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :purpose, :int
  end
end

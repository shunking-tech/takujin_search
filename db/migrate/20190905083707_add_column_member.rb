class AddColumnMember < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :area, :integer
    add_column :members, :experience_period, :integer
    add_column :members, :performance, :integer
    add_column :members, :motivation, :integer
    add_column :members, :want_activity_times, :integer
    add_column :members, :searching, :boolean
  end
end

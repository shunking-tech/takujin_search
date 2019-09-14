class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.integer :user_id, null: false
      t.string :team_name, null: false
      t.integer :motivation, null: false
      t.integer :activity_times, null: false
      t.integer :area, null: false
      t.integer :want_gender, null: false
      t.integer :want_experience_period, null: false
      t.integer :want_performance, null: false
      t.boolean :searching, null: false

      t.timestamps
    end
  end
end

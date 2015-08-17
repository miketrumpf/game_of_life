class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :aspect_type
      t.string :goal_name
      t.string :goal_long_description
      t.integer :aspect_start_score
      t.integer :aspect_goal_score
      t.date :start_date
      t.date :end_date
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

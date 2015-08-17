class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :screen_name
      t.string :password_digest
      t.integer :social_score
      t.integer :health_score
      t.integer :wealth_score
      t.integer :education_score
      t.integer :romantic_score
      t.integer :family_score
      t.integer :spirit_score
      t.integer :overall_score

      t.timestamps null: false
    end
  end
end

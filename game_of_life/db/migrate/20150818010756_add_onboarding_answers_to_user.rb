class AddOnboardingAnswersToUser < ActiveRecord::Migration
  def change
    add_column :users, :onboarding_answer_one, :string
    add_column :users, :onboardding_answer_two, :string
    add_column :users, :onboarding_answer_three, :string
    add_column :users, :onboarding_answer_four, :string
    add_column :users, :onboarding_answer_five, :string
  end
end

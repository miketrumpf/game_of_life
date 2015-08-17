json.array!(@goals) do |goal|
  json.extract! goal, :id, :aspect_type, :aspect_start_score, :aspect_goal_score, :start_date, :end_date, :user_id
  json.url goal_url(goal, format: :json)
end

json.array!(@users) do |user|
  json.extract! user, :id, :screen_name, :password_digest, :social_score, :health_score, :wealth_score, :education_score, :romantic_score, :family_score, :spirit_score, :overall_score
  json.url user_url(user, format: :json)
end

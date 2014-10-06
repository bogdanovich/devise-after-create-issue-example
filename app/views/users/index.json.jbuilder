json.array!(@users) do |user|
  json.extract! user, :id, :email, :access_token
  json.url user_url(user, format: :json)
end

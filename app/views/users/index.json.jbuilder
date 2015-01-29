json.array!(@users) do |user|
  json.extract! user, :id, :username, :message, :chatroom
  json.url user_url(user, format: :json)
end

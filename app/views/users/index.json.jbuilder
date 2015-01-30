json.array!(@users) do |user|
  json.extract! user, :id, :username, :message, :chatroom, :time_stamp
  json.url user_url(user, format: :json)
end

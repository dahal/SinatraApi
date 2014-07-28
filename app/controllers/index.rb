get '/' do
  # Look in app/views/index.erb
  erb :index
end

# GET /users
get '/users' do
  @users = User.all
  @users.to_json
end

get '/' do
end

get '/' do
end

get '/' do
end

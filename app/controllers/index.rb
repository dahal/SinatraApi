get '/' do
  # Look in app/views/index.erb
  erb :index
end

# GET /users
get '/users' do
  @users = User.all
  @users.to_json
end

# GET /posts
get '/posts' do
  @posts = Post.all
  @posts.to_json
end

# GET /users/1/posts
get '/users/:id/posts' do
  @posts = Post.where(:user_id => params[:id])
  @posts.to_json
end

get '/' do
end

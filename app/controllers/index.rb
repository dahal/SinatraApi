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
get '/users/:user_id/posts' do
  @posts = Post.where(:user_id => params[:user_id])
  @posts.to_json
end

get '/users/:user_id/posts/:post_id/comments' do
  #@posts = Post.where(:user_id => params[:user_id], :id => params[:post_id])
  @comments = Comment.where(:post_id => params[:post_id], :user_id => params[:user_id])
  @comments.to_json

end

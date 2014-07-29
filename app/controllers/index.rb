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

# GET /users/1/posts/3/comments
get '/users/:user_id/posts/:post_id/comments' do
  @comments = Comment.where(:post_id => params[:post_id], :user_id => params[:user_id])
  @comments.to_json

end

# POST /posts/new
post '/posts' do
  @post = Post.new(params)
  if @post.save
    "Successful"
  else
    "Something went Wrong!"
    #halt 500
  end
end


# POST /posts/2/comments
post '/posts/comments' do
  @comment = Comment.new(params)
  if @comment.save
    "Comment successfully posted!"
  else
    "Something went wrong!"
  end
end

#-------------------------------------#
post '/keys' do
  @api = Apikey.find_by_user_id(params[:user_id])
  if @api == nil
    @api = Apikey.create(key: SecureRandom.hex, user_id: params[:user_id])
  end
   "Your API Key is: #{@api[:key]}"
end



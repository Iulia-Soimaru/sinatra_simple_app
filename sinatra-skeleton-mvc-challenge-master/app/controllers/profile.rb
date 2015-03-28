get '/profile/:user_id' do
  @user = User.find(params[:user_id])
  erb :profile
end

post '/profile/:user_id' do
  session[:user_id]
  #save the tweet (validation)
  content_type :json
  @tweet = Tweet.new(params[:tweet])
  if @tweet.save
    {tweet_content: @tweet}.to_json
    # @tweet.to_json
    # return 200 and the tweet
  else
    # error case, return error status
    # and some message
    status 404
    "Error in ajax, fix it"
  end
end

delete '/profile/:user_id' do
  # @user = User.find(session[:user_id])
  @user = User.find(params[:user_id])
  params[:user_id] = nil
  redirect "/"
end
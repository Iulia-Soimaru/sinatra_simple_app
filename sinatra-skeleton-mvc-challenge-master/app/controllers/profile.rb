get '/profile/:user_id' do
  @user = User.find(params[:user_id])
  erb :profile
end

delete '/profile/:user_id' do
  # @user = User.find(session[:user_id])
  @user = User.find(params[:user_id])
  params[:user_id] = nil
  redirect "/"
end
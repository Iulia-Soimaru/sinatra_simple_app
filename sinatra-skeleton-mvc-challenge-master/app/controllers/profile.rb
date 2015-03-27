get '/profile/:user_id' do
  @user = User.find(session[:user_id])
  erb :profile
end

post '/profile/:user_id' do
  # @user = User.find(session[:user_id])
  session[:user_id] = nil
  redirect "/"
end
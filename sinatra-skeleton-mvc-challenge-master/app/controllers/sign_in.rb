get '/sign_in' do
  erb :sign_in
end

post '/sign_in' do
  @signin_user = User.where(email: params[:email]).first
  if @signin_user && @signin_user.password == params[:password]
    session[:user_id] == @signin_user.id
    status 200
    redirect "/profile/#{@signin_user.id}"
  else
    status 400
    "Wrong email or password"
  end
end
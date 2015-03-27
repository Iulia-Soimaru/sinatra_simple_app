get '/sign_in' do
  erb :sign_in
end

post '/sign_in' do
  @signin_user = User.where(email: params[:email]).first
  if @signin_user && @signin_user.password == params[:password]
    status 200
    session[:user_id] == @signin_user.id
    redirect 'profile/#{@user.id}'
  else
    status 400
    "Wrong email or password"
  end
end
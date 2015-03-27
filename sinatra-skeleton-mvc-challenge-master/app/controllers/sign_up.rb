get '/sign_up' do
  erb :sign_up
end

post '/sign_up' do
  @user = User.new(name: params[:name], email: params[:email], password: params[:password])
  if @user.save
    status 200
    session[:user_id] = @user.id
    redirect "/profile/#{@user.id}"
  else
    status 404
    "Sorry there was a mistake"
  end
end
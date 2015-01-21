get '/' do
  # render home page
 #TODO: Show all users if user is signed in
 if session[:user_id]
  @user = User.find(session[:user_id])
else
  @user = User.new(name: "guest")
end
  erb :index
end

#----------- SESSIONS -----------

get '/sessions/new' do
  # render sign-in page
end

post '/sessions' do
  # sign-in
end

delete '/sessions/:id' do
  # sign-out -- invoked
end

#----------- USERS -----------

get '/users/new' do
  # render sign-up page
end

post '/users' do
  # sign-up a new user
end

helpers do
  def current_user
    @current_user = User.find_by(id: session[:user_id] if session[:user_id])
end


# Homepage (Root path)
get '/' do
  erb :index
end

get '/login' do
    erb :login
end

get '/profile' do
    erb :profile
end

get '/signup' do 
    erb :signup
end

post '/login' do
    email = params[:login_email]
    password = params[:login_password]

    user = User.find_by(login_email: login_email)
    if user.login_password == password
      session[:user_id] = user_id
      redirect '/'
    else
      redirect '/login'
    end

end

post '/signup' do
      email = params[:signup_email]
      password = params[:signup_password]
      
      user = User.find_by(signup_email: email)
      if user   

      redirect '/login'

      else
      user = User.create(signup_email: email, signup_password: password)
      session[:user_id] = user.id
      redirect '/'
      end 
   
end

post '/profile' do 
    redirect '/'
end
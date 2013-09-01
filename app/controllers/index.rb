enable :sessions
# GET ===================================

get '/' do
  erb :index
end

# POST ==================================

post '/' do
  @check_user = User.authentication(params[:email],params[:password])

  if @check_user.nil?
    redirect "/error"
    erb :error
  else 
    @user_id = User.find_by(email: params[:email]).id
    session[:user_id] = @user_id  
   
    redirect "/play/#{@user_id}"
  end  
end

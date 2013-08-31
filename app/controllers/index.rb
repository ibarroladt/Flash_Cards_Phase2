# GET ===================================

get '/' do
  erb :index
end

# POST ==================================

post '/' do
  @check_user = User.authentication(params[:email],params[:password])
  @user_id = User.find_by(email: params[:email]).id

  if @check_user.nil?
    return "Unauthorized User"
  else 
    session[:user_id] = @check_user.id  
    @session = session[:user_id]
   
    redirect "/play/#{@user_id}"
  end  
end

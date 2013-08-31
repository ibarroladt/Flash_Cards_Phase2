get '/signup' do 
      @email = params[:new_user_email]
    @password = params[:new_user_password]
  erb :signup
end


post '/signup' do 
  if params[:new_user_password] == params[:confirm_password] 
    @email = params[:new_user_email]
    @password = params[:new_user_password]
    @create_user = User.new(email: @email, password: @password).save
    @check_user = User.authentication(params[:new_user_email],params[:new_user_password])
    @user_id = User.find_by(email: params[:new_user_email]).id
      if @check_user.nil?
        return "Error - please attempt login again"
      else 
        session[:user_id] = @user_id  
        @session = session[:user_id]
        redirect "/play/#{@user_id}"
      end
  else
    return "Passwords do not match."
  end
  erb :signup
end


 

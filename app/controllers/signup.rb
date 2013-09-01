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
    
      if @check_user.nil?
        redirect "/error"
      else 
        @user_id = User.find_by(email: params[:new_user_email]).id
        session[:user_id] = @user_id  
        @session = session[:user_id]
        redirect "/play/#{@user_id}"
      end
  else
    redirect "/error"
    erb :error
  end
  erb :signup
end


 

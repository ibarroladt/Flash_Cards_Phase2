get '/logout' do 
  erb :logout 
end


post '/logout' do 
  session.clear
  redirect to ('/')
  erb :index
end

get '/logout' do 
  sessions.clear
  redirect to ('/')
  erb :index 
end

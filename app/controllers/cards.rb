# GET ===================================
get '/card' do 
  erb :card
end

# POST ==================================

post '/card' do
  redirect to ('/answer')
  erb :answer
end


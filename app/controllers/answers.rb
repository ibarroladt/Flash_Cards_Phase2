# GET ===================================

get '/answer' do 
  

  erb :answer
end

# POST ==================================

post '/answer' do
  # unless card.last
    redirect to ('/card')
    erb :card
end

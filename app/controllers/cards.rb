# GET ===================================
get '/card/:id' do 
 @deck = Deck.first                       # change to params[:id]
  erb :card
end

# POST ==================================

post '/card' do
  redirect to ('/answer')
  erb :answer
end


# GET ===================================
get '/card/:id' do
 @deck = Deck.find(params[:id])
 @card_num ||= 1
 @card_num += 1
  erb :card
end

# POST ==================================

post '/card/:id' do
  redirect to ("/answer/#{params[:id]}")
  # erb :answer
end


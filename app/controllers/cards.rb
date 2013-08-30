# GET ===================================
get 'user/:user_id/card/:card_id' do
 @deck = Deck.find(params[:card_id])
 @card_num ||= 1
 @round = Round.create(:user_id => params[:user_id],:card_id => params[:card_id]) if @card_num == 1
 @card_num += 1
  erb :card
end

# POST ==================================

# post '/card/:id' do
#   redirect to ("/answer/#{params[:id]}")
#   # erb :answer
# end


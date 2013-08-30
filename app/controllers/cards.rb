# GET ===================================
get '/user/:user_id/round/:round_id/deck/:deck_id/card/:card_id' do
  @user_id = params[:user_id]
  @round_id = params[:round_id]
  @deck_id = params[:deck_id]
  @card_id = params[:card_id]
  


  @deck = Deck.find(params[:deck_id])
  # if @card_id < Card.all.length
  @round = Round.create(:user_id => params[:user_id],:deck_id => params[:deck_id]) if @round_id == "0"
  @round_id = @round.id  
  erb :card
end

# POST ==================================

# post '/card/:id' do
#   redirect to ("/answer/#{params[:id]}")
#   # erb :answer
# end


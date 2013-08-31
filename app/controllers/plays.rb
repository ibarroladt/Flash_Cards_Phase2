# GET ===================================
get '/play/:id' do

  @user_id = params[:id]
  @all_decks = Deck.all
  @round = Round.where(user_id: @user_id).all

  erb :play
end

# POST ==================================

# post '/play' do

#   @deck_id = params[:deck]
#   redirect "/user/#{@user_id}/cards"

# end


# GET ===================================
get '/user/:user_id/round/:round_id/deck/:deck_id/card/:card_id' do
  @user_id = params[:user_id]
  @round_id = params[:round_id]
  @deck_id = params[:deck_id]
  @card_id = params[:card_id]
  
  @deck = Deck.find(params[:deck_id])
  
  if @round_id == "0"
    @round = Round.create(:user_id => params[:user_id],:deck_id => params[:deck_id],:score => 0)
  else
    @round = Round.find(@round_id)
  end
   @round_id = @round.id

  erb :card
end

# POST ==================================


# Este post se puede evitar si la informacion se manda directo a 
# el get de arriba y este es convertido en post. Habria que cambiar las formas de answer. 

post '/user/:user_id/cards' do
  @user_id = params[:user_id]                   # user id is sent through url
  @deck_id = params[:deck]                      # deck is sent from post form
  @first_card_id = Deck.find(@deck_id).cards.first.id
  redirect ("/user/#{@user_id}/round/0/deck/#{@deck_id}/card/#{@first_card_id}")
end


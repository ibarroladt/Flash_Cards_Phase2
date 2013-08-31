# GET ===================================

get "/user/:user_id/round/:round_id/deck/:deck_id/answer_finished" do 
  @user_id = params[:user_id]
  @round_id = params[:round_id]
  @deck_id = params[:deck_id]
  @card_id = params[:card_id]
  @score = Round.find(@round_id).score
  erb :answer_finished
end

# POST ==================================

post '/user/:user_id/round/:round_id/deck/:deck_id/card/:card_id/answer' do
  @user_id = params[:user_id]
  @round_id = params[:round_id]
  @deck_id = params[:deck_id]
  @card_id = params[:card_id].to_i
  @guess = params[:guess]
  @deck_length = Deck.find(@deck_id).cards.length

  @guess_object = Guess.create(:guess => @guess, :round_id => params[:round_id], :card_id => params[:card_id])
  @answer = Card.find(params[:card_id]).answer
  if @guess_object.guess == @answer   
    @correctness = "You got it right"
    @new_score = Round.find(@round_id).score + 1
    Round.find(@round_id).update_attributes(:score => @new_score)
  else 
    @new_score = Round.find(@round_id).score
    @correctness = "You got it wrong, keep trying! "
  end 

  if @card_id < @deck_length
    @increase_of_card =  @card_id + 1
    @action = "/user/#{@user_id}/round/#{@round_id}/deck/#{@deck_id}/card/#{@increase_of_card}"
  else
    @action = "/user/#{@user_id}/round/#{@round_id}/deck/#{@deck_id}/answer_finished"
  end
  erb :answer
end

# 1 - save the guess
# 2 - retrive card answer
# 3 - compare guess vs answer
# 4 - display correctness
# 5 - display answer

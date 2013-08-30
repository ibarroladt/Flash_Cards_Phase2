# GET ===================================

# get '/answer/:id' do 

#   erb :answer
# end

# POST ==================================

post '/user/:user_id/round/:round_id/deck/:deck_id/card/:card_id/answer' do
  @user_id = params[:user_id]
  @round_id = params[:round_id]
  @deck_id = params[:deck_id]
  @card_id = params[:card_id]
  @guess = params[:guess]

  @guess_object = Guess.create(:guess => @guess, :round_id => params[:round_id], :card_id => params[:card_id])
  @answer = Card.find(params[:card_id]).answer
  if @guess_object.guess == @correctness 
    @correctness = "You got it right" 
  else 
    @correctness = "You got it wrong, keep trying! "
  end 
  # unless card.last
  erb :answer
end

# 1 - save the guess
# 2 - retrive card answer
# 3 - compare guess vs answer
# 4 - display correctness
# 5 - display answer

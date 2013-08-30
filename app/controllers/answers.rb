# GET ===================================

# get '/answer/:id' do 

#   erb :answer
# end

# POST ==================================

post '/answer/:id' do
  @guess = params[:answer_attempt]
    
  # unless card.last
end

# 1 - save the guess
# 2 - retrive card answer
# 3 - compare guess vs answer
# 4 - display correctness
# 5 - display answer

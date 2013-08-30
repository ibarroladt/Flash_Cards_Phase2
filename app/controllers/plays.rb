# GET ===================================
get '/play' do 
  # @whatever = Table.all
  @deck = ["Horses","Famous Bingo Players","Winged Things"]
  erb :play
end

# POST ==================================

# post '/play' do 
#   erb :card
# end

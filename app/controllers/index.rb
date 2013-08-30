# GET ===================================

get '/' do
  # Look in app/views/index.erb
  erb :index
end

# POST ==================================

post '/' do
  redirect to ('/play') 
  erb :play
end

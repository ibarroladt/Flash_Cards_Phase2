User.create(:email => 'tee@dev.com', :password => 'tee')
User.create(:email => 'javier@dev.com', :password => 'javier')
User.create(:email => 'cory@dev.com', :password => 'cory')
User.create(:email => 'maria@dev.com', :password => 'maria')

Deck.create(:name => 'color-english-to-italian')
Deck.create(:name => 'color-english-to-spanish')

Round.create(:user_id => 1, :deck_id => 1)
Round.create(:user_id => 2, :deck_id => 2)
Round.create(:user_id => 3, :deck_id => 1)
Round.create(:user_id => 4, :deck_id => 2)

# Round.create(:user_id => 1, :deck_id => rand(1..2))
# Round.create(:user_id => rand(1..4), :deck_id => rand(1..2))
# Round.create(:user_id => rand(1..4), :deck_id => rand(1..2))
# Round.create(:user_id => rand(1..4), :deck_id => rand(1..2))
# Round.create(:user_id => rand(1..4), :deck_id => rand(1..2))
# Round.create(:user_id => rand(1..4), :deck_id => rand(1..2))
# Round.create(:user_id => rand(1..4), :deck_id => rand(1..2))
# Round.create(:user_id => rand(1..4), :deck_id => rand(1..2))
# Round.create(:user_id => rand(1..4), :deck_id => rand(1..2))




#english-italian
Card.create(:question => 'green', :answer => 'verde', :deck_id => (1))
Card.create(:question => 'red', :answer => 'rosso', :deck_id => (1))
Card.create(:question => 'yellow', :answer => 'giallo', :deck_id => (1))
Card.create(:question => 'blue', :answer => 'azzurro', :deck_id => (1))

#english-spanish
Card.create(:question => 'black', :answer => 'negro', :deck_id => (2))
Card.create(:question => 'white', :answer => 'blanco', :deck_id => (2))
Card.create(:question => 'pink', :answer => 'rosa', :deck_id => (2))
Card.create(:question => 'orange', :answer => 'naranja', :deck_id => (2))




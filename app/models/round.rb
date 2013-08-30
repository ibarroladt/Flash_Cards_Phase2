class Round < ActiveRecord::Base
  belongs_to :user, presence: true 
  belongs_to :deck, presence: true
  has_many :guesses
  has_many :cards, through: :decks
end

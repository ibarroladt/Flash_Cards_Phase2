class Card < ActiveRecord::Base
  validates :question, presence: true, uniquesness: true
  validates :answer, presence: true
  belongs_to :deck, presence: true
  has_many :guesses
  has_many :rounds, through: :decks
  has_many :users, through: :rounds
end

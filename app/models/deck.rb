class Deck < ActiveRecord::Base
  validates :name, presence: true, uniquesness: true 
  has_many :rounds, presence: true
  has_many :cards,
  has_many :guesses, through: :cards
  has_many :users, through: :rounds
end

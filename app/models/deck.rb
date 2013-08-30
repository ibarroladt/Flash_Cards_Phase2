class Deck < ActiveRecord::Base
  validates :name, uniqueness: true 
  has_many :rounds
  has_many :cards
  has_many :guesses, through: :cards
  has_many :users, through: :rounds
end

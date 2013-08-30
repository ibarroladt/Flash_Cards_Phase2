class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  has_many :rounds
  has_many :decks, through: :rounds 
  has_many :guesses, through: :rounds
  has_many :cards, through: :decks 
end

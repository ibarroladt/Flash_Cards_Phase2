class Card < ActiveRecord::Base
  validates :question, presence: true, uniqueness: true
  validates :answer, presence: true
  belongs_to :deck
  has_many :guesses
  has_many :rounds, through: :decks
  has_many :users, through: :rounds
end

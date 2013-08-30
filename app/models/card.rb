class Card < ActiveRecord::Base
  validates :question, presence: true, uniquesness: true
  validates :answer, presence: true
  belongs_to :deck
  has_many :guesses 
end

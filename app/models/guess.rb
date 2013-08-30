class Guess < ActiveRecord::Base
  validates :guess, presence: true
  belongs_to :round
  belongs_to :card 
end

class Guess < ActiveRecord::Base
  validates :guess
  belongs_to :round
  belongs_to :card 
end

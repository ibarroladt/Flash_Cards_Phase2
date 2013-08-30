class Guess < ActiveRecord::Base
  validates :guess, presence: true
  belongs_to :round, presence: true
  belongs_to :card, presence: true 
end

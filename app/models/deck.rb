class Deck < ActiveRecord::Base
  validates :name, presence: true, uniquesness: true 
  has_many :cards
  belongs_to :round, presence: true
end

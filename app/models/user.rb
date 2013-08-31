class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates_format_of :email, :with => /@/
  validates :password, presence: true
  has_many :rounds
  has_many :decks, through: :rounds 
  has_many :guesses, through: :rounds
  has_many :cards, through: :decks 

  def self.authentication(email,password)
    User.find_by_email_and_password(email,password)
  end

end


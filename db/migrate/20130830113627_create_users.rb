class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password  
      t.timestamps
    end

    create_table :rounds do |t|
      t.belongs_to :user 
      t.belongs_to :deck
      t.integer :score
      t.timestamps
    end 

    create_table :decks do |t|
      t.string :name 
      t.timestamps
    end

    create_table :cards do |t|
      t.string :question 
      t.string :answer 
      t.belongs_to :deck 
      t.timestamps
    end 

    create_table :guesses do |t|
      t.string :guess
      t.belongs_to :round
      t.belongs_to :card
      t.timestamps 
    end 
  end 
end

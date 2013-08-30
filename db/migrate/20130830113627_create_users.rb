class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false 
      t.string :password, null: false  
      t.timestamps
    end

    create_table :rounds do |t|
      t.belongs_to :user, null: false 
      t.belongs_to :deck, null: false 
      t.timestamps
    end 

    create_table :decks do |t|
      t.string :name, null: false 
    end

    create_table :cards do |t|
      t.string :question, null: false 
      t.string :answer, null: false  
      t.belongs_to :deck, null: false  

    end 

    create_table :guesses do |t|
      t.string :guess
      t.belongs_to :round, null: false
      t.belongs_to :card, null: false 

    end 

end

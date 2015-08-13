class CreateTables < ActiveRecord::Migration

  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.timestamps
    end

    create_table :pins do |t|
      # Your code goes here
      t.string :pins
      t.string :comments
      t.timestamps
    end

  end

end
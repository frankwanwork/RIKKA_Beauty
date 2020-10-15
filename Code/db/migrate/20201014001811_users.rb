class Users < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, unique: true
      t.string :username, unique: true
      t.string :password
      t.integer :user_type
      t.string :lastname
      t.string :firstname
      t.string :phone, unique: true
    end
  end
end

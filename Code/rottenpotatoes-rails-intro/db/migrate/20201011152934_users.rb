class Users < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.string :password
      t.integer :type
      t.string :lastname
      t.string :firstname
      t.string :phone
    end
  end
end

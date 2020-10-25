class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :productName, unique: true
      t.text :description
      t.string :tags
      t.string :pictures
     
    end
    add_index :products, :productName, unique: true
  end
end

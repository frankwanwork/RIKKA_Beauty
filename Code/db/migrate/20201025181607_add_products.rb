class AddProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :pname, unique: true
      t.string :price
      t.string :tags
      t.integer :picid
      t.string :desc
    end

  end
end

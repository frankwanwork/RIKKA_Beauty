class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :productName, unique: true
      t.string :picture1
      t.string :picture2
      t.string :picture3
      t.string :picture4
      t.timestamps null: false
    end
  end
end

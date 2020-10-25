class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tagName, unique: true
      t.timestamps null: false
    end
    add_index :tags, :tagName, unique: true
  end
end

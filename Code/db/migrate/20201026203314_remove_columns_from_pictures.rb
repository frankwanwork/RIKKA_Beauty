class RemoveColumnsFromPictures < ActiveRecord::Migration
  def change
    remove_column :pictures, :productName, :string
    remove_column :pictures, :picture1, :string
    remove_column :pictures, :picture2, :string
    remove_column :pictures, :picture3, :string
    remove_column :pictures, :picture4, :string
  end
end

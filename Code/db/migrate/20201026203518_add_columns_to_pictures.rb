class AddColumnsToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :filename, :string
    add_column :pictures, :pic_type, :string
    add_column :pictures, :data, :binary
  end
end

class ChangeProductColumnName < ActiveRecord::Migration
  def change
    rename_column :products, :pictures, :pics
  end
end

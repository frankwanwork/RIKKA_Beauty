class ChangeProductname < ActiveRecord::Migration
  def change
    rename_column :products, :productName, :productname
  end
end

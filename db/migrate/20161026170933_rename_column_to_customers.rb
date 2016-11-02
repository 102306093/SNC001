class RenameColumnToCustomers < ActiveRecord::Migration
  def change
    rename_column :customers, :address, :homeaddress
    rename_column :customers, :cusid, :price
    add_column :customers, :convenienceaddress, :string
    add_column :customers, :faceaddress, :string
  end
end

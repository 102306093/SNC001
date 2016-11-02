class RenameColumnToCustomers < ActiveRecord::Migration
  def change
    rename_column :customers, :address, :homeaddress
    
    add_column :customers, :convenienceaddress, :string
    add_column :customers, :faceaddress, :string
  end
end

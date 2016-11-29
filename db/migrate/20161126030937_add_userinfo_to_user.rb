class AddUserinfoToUser < ActiveRecord::Migration
  def change
    add_column :users, :u_phone, :string
    add_column :users, :username, :string
    add_column :users, :u_homeaddress, :string
    add_column :users, :u_convenienceaddress, :string
  end
end

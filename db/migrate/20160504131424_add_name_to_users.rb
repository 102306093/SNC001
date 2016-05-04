class AddNameToUsers < ActiveRecord::Migration
  def change
      add_column :users, :username, :string
    add_column :users, :cellphone, :integer
    add_column :users, :address, :string
  end
end

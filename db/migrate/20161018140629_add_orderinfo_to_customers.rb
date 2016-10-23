class AddOrderinfoToCustomers < ActiveRecord::Migration
  def change
     add_column  :customers, :productname, :string
     add_column  :customers, :productnumber, :integer
  end
end

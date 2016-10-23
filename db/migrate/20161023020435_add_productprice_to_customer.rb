class AddProductpriceToCustomer < ActiveRecord::Migration
  def change
    add_column  :customers, :productnumber1, :integer
    add_column  :customers, :productnumber2, :integer
    add_column  :customers, :productnumber3, :integer
  end
end

class AddPriceToCustomer < ActiveRecord::Migration
  def change
    rename_column :customers, :cusid, :price
  end
end

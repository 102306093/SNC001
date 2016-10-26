class RenameTemporarydataToPayer < ActiveRecord::Migration
  def change
    rename_table :temporary_data, :payers
    rename_column :payers, :data, :payeraccount
    add_column  :payers, :paymentprice, :integer
    
  end 
end

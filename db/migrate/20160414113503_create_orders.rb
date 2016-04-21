class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :ordid
      t.datetime :orddate
      t.integer :money
      t.string :address
      t.string :payment
      t.string :account5num
      t.string :cusid

      t.timestamps null: false
    end
  end
end

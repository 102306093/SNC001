class CreateOrderlists < ActiveRecord::Migration
  def change
    create_table :orderlists do |t|
      t.integer :qty
      t.string :ordid
      t.string :proid

      t.timestamps null: false
    end
  end
end

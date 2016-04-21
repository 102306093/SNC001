class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :proid
      t.string :proname
      t.integer :price
      t.integer :qty
      t.string :pic1
      t.text :introduce
      t.string :supid

      t.timestamps null: false
    end
  end
end

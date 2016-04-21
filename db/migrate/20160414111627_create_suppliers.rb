class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :supid
      t.string :supname
      t.string :address
      t.string :email
      t.string :tel
      t.string :cellphone
      t.string :pic1
      t.text :introduce

      t.timestamps null: false
    end
  end
end

class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :cusid
      t.string :cusname
      t.string :email
      t.string :cellphone
      t.string :address

      t.timestamps null: false
    end
  end
end

class AddColumnToPayers < ActiveRecord::Migration
  def change
    add_column  :payers, :payerphone, :string
  end
end

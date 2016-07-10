class AddOrderstatusToOrderlists < ActiveRecord::Migration
  def change
    add_column :orderlists, :orderttatus, :string
  end
end

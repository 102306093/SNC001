class ChangeStatusFromCustomers < ActiveRecord::Migration
  def change
    change_column :customers, :status, :string, :default => "待付款"
  end
end

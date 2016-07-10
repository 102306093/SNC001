class AddOrderlsitsToOrderitem < ActiveRecord::Migration
  def up
    add_column :order_items, :orderlists_id
    add_index :order_items, :orderlists_id

    OrderItem.reset_column_information

    OrderItem.includes(:order).find_each do |referral|
      order_item.update_attribute(:orderlist_id, order_item.order.orderlist)
    end

    remove_column :order_items, :orders_id
  end
end
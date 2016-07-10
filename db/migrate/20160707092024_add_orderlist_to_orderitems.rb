class AddOrderlistToOrderitems < ActiveRecord::Migration
  def change
    add_reference :order_items, :orderlist, index: true, foreign_key: true
  end
end

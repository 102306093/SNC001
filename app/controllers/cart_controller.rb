class CartController < ApplicationController
    def new
        @order_items = current_order.order_items
    end
    
  def show
    @order_items = current_order.order_items
  end
end

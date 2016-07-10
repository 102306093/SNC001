class HomeController < ApplicationController
    def index
        @product=Product.all
    end

  def show
    @order_items = current_order.order_items
  end
end
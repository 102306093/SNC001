class HomeController < ApplicationController
    def index
        @product=Product.all
        @article=Article.all
        @external_article=Article.where(owner: 'otherone') 
        @internal_article=Article.where(owner: 'we')
    end

  def show
    @order_items = current_order.order_items
  end
end
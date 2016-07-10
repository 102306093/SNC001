class Product < ActiveRecord::Base
    belongs_to :supplier
    has_many :orders, through: :orderlists
    has_many :order_items
  
end

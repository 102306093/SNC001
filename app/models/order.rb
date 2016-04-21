class Order < ActiveRecord::Base
    belongs_to :customer
    has_many :orderlists
    has_many :products, through: :orderlists
end

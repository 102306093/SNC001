class Customer < ActiveRecord::Base
    has_many :orders
    validates :email, presence: true
end

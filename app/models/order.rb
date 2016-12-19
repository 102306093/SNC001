class Order < ActiveRecord::Base
    belongs_to :user
    has_many :orderlists
    has_many :products, through: :orderlists
    validates :email, presence: true
   
end


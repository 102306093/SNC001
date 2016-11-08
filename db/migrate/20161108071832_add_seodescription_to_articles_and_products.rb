class AddSeodescriptionToArticlesAndProducts < ActiveRecord::Migration
  def change
    add_column  :articles, :seodescription, :string
    add_column  :products, :seodescription, :string
  end
end

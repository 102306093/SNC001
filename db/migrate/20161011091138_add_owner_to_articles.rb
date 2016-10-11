class AddOwnerToArticles < ActiveRecord::Migration
  def change
    add_column  :articles, :owner, :string 
  end
end

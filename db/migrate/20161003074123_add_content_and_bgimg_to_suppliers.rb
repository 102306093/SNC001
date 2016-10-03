class AddContentAndBgimgToSuppliers < ActiveRecord::Migration
  def change
    add_column :suppliers, :content, :text
    add_column :suppliers, :bgimg, :string
  end
end

class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :introduce
      t.text :content
      t.string :pic1

      t.timestamps null: false
    end
  end
end

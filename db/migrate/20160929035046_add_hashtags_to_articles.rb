class AddHashtagsToArticles < ActiveRecord::Migration
 def change
   add_column :articles, :hashtag, :string
 end
end

class AddTimestampToArticles < ActiveRecord::Migration
  def change
    add_column :articles,:created_at,:datetime
    change_column :articles,:comment,:text, null => false
  end
end

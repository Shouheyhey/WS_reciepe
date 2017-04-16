class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :user_id
      t.integer :article_id
      t.integer :seminar_id
      t.text :comment
    end
  end
end

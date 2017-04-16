class CreateSeminars < ActiveRecord::Migration
  def change
    create_table :seminars do |t|
      t.text :title
      t.integer :seminar_id
      t.timestamps
    end
  end
end

class AddSeminarIdToSeminars < ActiveRecord::Migration
  def change
    add_column :seminars,:seminar_id,:integer
  end
end

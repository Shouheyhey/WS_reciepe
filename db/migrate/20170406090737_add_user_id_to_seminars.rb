class AddUserIdToSeminars < ActiveRecord::Migration
  def change
    add_column :seminars, :user_id, :integer
    add_column :seminars, :time_table, :text
    remove_column :seminars, :seminar_id, :integer
  end
end

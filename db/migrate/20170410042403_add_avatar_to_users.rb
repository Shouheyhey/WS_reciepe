class AddAvatarToUsers < ActiveRecord::Migration
  def change
    add_column :users,:avatar,:text
    add_column :users,:nickname,:string
    add_column :users,:affiliation,:string
  end
end

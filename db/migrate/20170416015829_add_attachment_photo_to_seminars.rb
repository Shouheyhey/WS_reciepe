class AddAttachmentPhotoToSeminars < ActiveRecord::Migration
  def self.up
    change_table :seminars do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :seminars, :photo
  end
end

def change
  change_column :seminars,:title,:text, null => false
  remove_column :seminars, :tips, :text
end
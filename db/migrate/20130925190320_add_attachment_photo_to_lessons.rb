class AddAttachmentPhotoToLessons < ActiveRecord::Migration
  def self.up
    change_table :lessons do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :lessons, :photo
  end
end

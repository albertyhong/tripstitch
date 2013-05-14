class AddAttachmentPictureToDestinations < ActiveRecord::Migration
  def self.up
    change_table :destinations do |t|
      t.attachment :picture
    end
  end

  def self.down
    drop_attached_file :destinations, :picture
  end
end

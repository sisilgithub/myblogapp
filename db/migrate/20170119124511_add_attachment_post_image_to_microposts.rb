class AddAttachmentPostImageToMicroposts < ActiveRecord::Migration
  def self.up
    change_table :microposts do |t|
      t.attachment :post_image
    end
  end

  def self.down
    remove_attachment :microposts, :post_image
  end
end

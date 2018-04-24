class AddAttachmentImageToPosts < ActiveRecord::Migration[4.2]
    change_table :posts do |t|
      t.attachment :image
    end

  def self.down
    remove_attachment :posts, :image
  end
end

class AddAttachmentPosterToEvents < ActiveRecord::Migration[4.2]
  def self.up
    change_table :events do |t|
      t.attachment :poster
    end
  end

  def self.down
    remove_attachment :events, :poster
  end
end

class AddAttachmentColumnsToGardeners < ActiveRecord::Migration
  def change
    add_attachment :groups, :avatar
    add_attachment :groups, :resume
  end
end

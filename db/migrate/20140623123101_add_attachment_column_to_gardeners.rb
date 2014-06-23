class AddAttachmentColumnToGardeners < ActiveRecord::Migration
  def change
  add_attachment :gardeners, :avatar
  add_attachment :gardeners, :resume
  end
end

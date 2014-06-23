class AddAttachementToSupportVisits < ActiveRecord::Migration
  def self.up
    add_attachment :support_visits, :garden_picture
  end

  def self.down
    remove_attachement :support_visists, :garden_picture
  end
end

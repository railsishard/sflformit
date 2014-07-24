class Group < ActiveRecord::Base
  validates :name, presence: true,
            length: { minimum: 5 }
  has_many :gardeners
  has_attached_file :avatar, :styles => {:thumb => "100x100>"}
  validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  has_attached_file :resume
  accepts_nested_attributes_for :gardeners
  has_many :attendance_registers
  belongs_to :trainer
end

class Gardener < ActiveRecord::Base
  belongs_to :group
  #has_many :documents
  has_attached_file :avatar, :styles => {:thumb => "100x100>"}
  validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  has_attached_file :resume
  has_many :attendance_registers_training_sessions
  has_many :attendance_registers, through: :attendance_registers_training_sessions
  #mount_uploader :image, ImageUploader

  def active?
    status == 'active'
  end
end





=begin
  include AASM

aasm do
  state :creation, :initial => true
  state :initial_q
  state :attending_classes
  state :support_visits
  state :final_q

  event :run_initial_q do
    transitions :from => :creation, :to => :initial_q
  end
  
  event :fill_in_attendance_register do
    transisions :from => :initial_q, :to => :cleaning

  end

=end
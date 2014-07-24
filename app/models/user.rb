class User < ActiveRecord::Base
  has_secure_password
validates :username, presence: true,
                     uniqueness: true
has_many :groups
has_many :gardners, through: :groups

before_save :downcase_username
  def downcase_username
    self.username = username.downcase
end
end

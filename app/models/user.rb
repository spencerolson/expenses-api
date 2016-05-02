class User < ActiveRecord::Base
	has_secure_password
  has_many :members, dependent: :destroy
  has_many :groups, through: :members
	validates :email, presence: true, uniqueness: true
end

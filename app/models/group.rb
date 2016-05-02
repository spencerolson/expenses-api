class Group < ActiveRecord::Base
  validates :title, presence: true
  has_many :members
  has_many :users, through: :members
end

class Expense < ActiveRecord::Base
  belongs_to :purchaser, class_name: "Member", foreign_key: "member_id"
  has_many :owers, class_name: "Member"
end

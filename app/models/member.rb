class Member < ActiveRecord::Base
  belongs_to :user
  belongs_to :group
  has_many :purchased_expenses, class_name: "Expense"
end

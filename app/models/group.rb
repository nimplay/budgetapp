class Group < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :expenses
  has_many :incomes
  validates :kind, presence: true, inclusion: { in: %w[Income Expense] }
  
end

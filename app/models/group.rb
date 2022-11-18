class Group < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_and_belongs_to_many :expenses
  has_and_belongs_to_many :incomes
  validates :kind, presence: true, inclusion: { in: %w[Income Expense] }
end

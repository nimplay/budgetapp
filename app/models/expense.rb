class Expense < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :groups
end

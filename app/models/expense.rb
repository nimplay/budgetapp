class Expense < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_and_belongs_to_many :groups, class_name: 'Group'
end

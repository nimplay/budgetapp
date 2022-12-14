class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :expenses, foreign_key: 'author_id'
  has_many :incomes, foreign_key: 'author_id'
  has_many :groups
end

class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @groups = Group.where(author_id: @user.id)
    @credit = credit
    @total_income = income
    @total_expense = expense
  end

  def credit
    @user = current_user
    @incomes = Income.where(author_id: @user.id)
    @expenses = Expense.where(author_id: @user.id)
    total_income = 0
    total_expense = 0

    @incomes.each do |income|
      total_income = income.amount + total_income
    end

    @expenses.each do |expense|
      total_expense = expense.amount + total_expense
    end
    total_income - total_expense
  end

  def income
    @income = Income.where(author_id: @user.id)
    @total_income = 0
    @income.each do |income|
      @total_income = income.amount + @total_income
    end
    @total_income
  end

  def expense
    @expense = Expense.where(author_id: @user.id)
    @total_expense = 0
    @expense.each do |expense|
      @total_expense = expense.amount + @total_expense
    end
    @total_expense
  end
end

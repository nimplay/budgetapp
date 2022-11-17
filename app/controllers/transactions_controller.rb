class TransactionsController < ApplicationController
  def index
    @user = current_user
    @incomes = Income.where(author_id: @user.id)
    @expenses = Expense.where(author_id: @user.id)
    @transactions = []
    @transactions.push(@incomes)
    @transactions.push(@expenses)
    @transactions.flatten!
    @credit = credit
  end

  def new

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
      total_expense =  expense.amount + total_expense
    end
    total_income - total_expense
  end
end

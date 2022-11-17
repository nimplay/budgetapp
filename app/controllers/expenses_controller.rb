class ExpensesController < ApplicationController

  def index
    @user = current_user
    @expenses = Expense.where(author_id: @user.id)
    @credit = credit
  end

  def new
    @user = current_user
    @expense = Expense.new
  end

  def create
    @user = current_user
    @expense = Expense.new(expense_params)
    @expense.author_id = @user.id
    if @expense.save
      redirect_to expenses_path
    else
      render :new
    end
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

  def expense_params
    params.require(:expense).permit(:author_id, :name, :description, :amount, :icon)
  end
end

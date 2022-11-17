class IncomesController < ApplicationController
  def index
    @user = current_user
    @incomes = Income.where(author_id: @user.id)
    @credit = credit
  end

  def new
    @user = current_user
    @income = Income.new
  end

  def create
    @user = current_user
    @income = Income.new(income_params)
    @income.author_id = @user.id
    if @income.save
      redirect_to incomes_path
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

  def income_params
    params.require(:income).permit(:author_id, :name, :description, :amount, :icon)
  end
end

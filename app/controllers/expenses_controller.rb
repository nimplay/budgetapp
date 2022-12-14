class ExpensesController < ApplicationController
  def index
    @user = current_user
    @expenses = Expense.where(author_id: @user.id)
    @credit = credit
    @total = total_expense
    @expenses = @expenses.order('created_at DESC')
  end

  def new
    @user = current_user
    @expense = Expense.new
    @groups = Group.where(author_id: @user.id, kind: 'Expense')
  end

  def create
    @user = current_user
    @expense = Expense.new(expense_params)
    @expense.author_id = @user.id
    @group_id = 1

    if @expense.save
      @expense_group = ExpenseGroup.new(expense_id: @expense.id, group_id: @group_id)
      @expense_group.save
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

  def total_expense
    @user = current_user
    @expenses = Expense.where(author_id: @user.id)
    total_expense = 0

    @expenses.each do |expense|
      total_expense = expense.amount + total_expense
    end
    total_expense
  end

  def expense_params
    params.require(:expense).permit(:author_id, :name, :description, :amount, :icon)
  end
end

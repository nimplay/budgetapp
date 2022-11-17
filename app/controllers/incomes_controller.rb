class IncomesController < ApplicationController
  def index
    @user = current_user
    @incomes = Income.where(author_id: @user.id)
    @credit = credit
    @total = total_income
    @incomes = @incomes.order('created_at DESC')
  end

  def new
    @user = current_user
    @income = Income.new
    @groups = Group.where(author_id: @user.id, kind: 'Income')
  end

  def create
    @user = current_user
    @income = Income.new(income_params)
    @income.author_id = @user.id
    @group_id = 3

    if @income.save
      @income_group = IncomeGroup.new(income_id: @income.id, group_id: @group_id)
      @income_group.save
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

  def total_income
    @user = current_user
    @incomes = Income.where(author_id: @user.id)
    total_income = 0

    @incomes.each do |income|
      total_income = income.amount + total_income
    end
    total_income
  end

  def income_params
    params.require(:income).permit(:author_id, :name, :description, :amount, :icon)
  end
end

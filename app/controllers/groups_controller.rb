class GroupsController < ApplicationController
  def index
    @user = current_user
    @groups = Group.where(author_id: @user.id)
    @credit = credit
  end

  def new
    @user = current_user
    @group = Group.new
  end

  def create
    @user = current_user
    @group = Group.new(group_params)
    @group.author_id = @user.id
    if @group.save
      redirect_to groups_path
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
      total_expense =  expense.amount + total_expense
    end
    total_income - total_expense
  end

  def group_params
    params.require(:group).permit(:author_id, :name, :icon, :kind)
  end
end

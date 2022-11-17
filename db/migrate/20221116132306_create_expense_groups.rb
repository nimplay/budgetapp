class CreateExpenseGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :expense_groups do |t|
      t.integer :expense_id, null: false, foreign_key: true
      t.integer :group_id, null: false, foreign_key: true
      t.index %i[expense_id group_id], name: 'index_expense_groups_on_expense_id_and_group_id'
      t.index %i[group_id expense_id], name: 'index_expense_groups_on_group_id_and_expense_id'
      t.timestamps
    end
  end
end

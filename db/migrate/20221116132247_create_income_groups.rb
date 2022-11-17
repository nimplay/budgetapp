class CreateIncomeGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :income_groups do |t|
      t.integer :income_id, null: false
      t.integer :group_id, null: false
      t.index %i[income_id group_id], name: 'index_income_groups_on_income_id_and_group_id'
      t.index %i[group_id income_id], name: 'index_income_groups_on_group_id_and_income_id'
      t.timestamps
    end
  end
end

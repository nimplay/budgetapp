class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.integer :author_id, null: false, foreign_key: true
      t.string :name, null: false, default: 'Expense'
      t.string :description, null: false, default: 'Description'
      t.integer :amount, null: false, default: 0
      t.string :icon, null: false, default: 'https://img.icons8.com/external-flaticons-lineal-color-flat-icons/64/null/external-costs-digital-nomading-relocation-flaticons-lineal-color-flat-icons.png'
      t.timestamps
    end
  end
end

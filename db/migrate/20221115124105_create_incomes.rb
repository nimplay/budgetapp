class CreateIncomes < ActiveRecord::Migration[7.0]
  def change
    create_table :incomes do |t|
      t.integer :author_id, null: false, foreign_key: true
      t.string :name, null: false, default: 'Income'
      t.string :description, null: false, default: 'Description'
      t.integer :amount, null: false, default: 0
      t.string :icon, null: false, default: 'https://img.icons8.com/external-flatart-icons-lineal-color-flatarticons/64/null/external-income-startup-flatart-icons-lineal-color-flatarticons.png'
      t.timestamps
    end
  end
end

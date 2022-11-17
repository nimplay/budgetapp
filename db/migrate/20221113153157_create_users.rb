class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false, default: 'Username'
      t.string :icon, default: 'https://img.icons8.com/external-xnimrodx-lineal-color-xnimrodx/64/null/external-user-shopping-mall-xnimrodx-lineal-color-xnimrodx.png'
      t.timestamps
    end
  end
end

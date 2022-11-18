class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :name, null: false, default: 'Default Group'
      t.string :icon, null: false, default: 'https://img.icons8.com/color/48/null/staff-skin-type-7.png'
      t.integer :author_id, null: false, foreign_key: true
      t.string :kind, null: false, default: 'Income'
      t.timestamps
    end
  end
end

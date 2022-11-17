# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_221_117_154_753) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'expense_groups', force: :cascade do |t|
    t.integer 'expense_id', null: false
    t.integer 'group_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index %w[expense_id group_id], name: 'index_expense_groups_on_expense_id_and_group_id'
    t.index %w[group_id expense_id], name: 'index_expense_groups_on_group_id_and_expense_id'
  end

  create_table 'expenses', force: :cascade do |t|
    t.integer 'author_id', null: false
    t.string 'name', default: 'Expense', null: false
    t.string 'description', default: 'Description', null: false
    t.integer 'amount', default: 0, null: false
    t.string 'icon', default: 'https://img.icons8.com/external-flaticons-lineal-color-flat-icons/64/null/external-costs-digital-nomading-relocation-flaticons-lineal-color-flat-icons.png', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'groups', force: :cascade do |t|
    t.string 'name', default: 'Default Group', null: false
    t.string 'icon', default: 'https://img.icons8.com/color/48/null/staff-skin-type-7.png', null: false
    t.integer 'author_id', null: false
    t.string 'kind', default: 'Income', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'income_groups', force: :cascade do |t|
    t.integer 'income_id', null: false
    t.integer 'group_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index %w[group_id income_id], name: 'index_income_groups_on_group_id_and_income_id'
    t.index %w[income_id group_id], name: 'index_income_groups_on_income_id_and_group_id'
  end

  create_table 'incomes', force: :cascade do |t|
    t.integer 'author_id', null: false
    t.string 'name', default: 'Income', null: false
    t.string 'description', default: 'Description', null: false
    t.integer 'amount', default: 0, null: false
    t.string 'icon',
             default: 'https://img.icons8.com/external-flatart-icons-lineal-color-flatarticons/64/null/external-income-startup-flatart-icons-lineal-color-flatarticons.png', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'name', default: 'Username', null: false
    t.string 'icon', default: 'https://img.icons8.com/external-xnimrodx-lineal-color-xnimrodx/64/null/external-user-shopping-mall-xnimrodx-lineal-color-xnimrodx.png'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer 'sign_in_count', default: 0, null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.string 'current_sign_in_ip'
    t.string 'last_sign_in_ip'
    t.string 'confirmation_token'
    t.datetime 'confirmed_at'
    t.datetime 'confirmation_sent_at'
    t.string 'unconfirmed_email'
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end
end

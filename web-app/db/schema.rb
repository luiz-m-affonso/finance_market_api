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

ActiveRecord::Schema.define(version: 2022_04_09_031537) do

  create_table "accounts", force: :cascade do |t|
    t.string "balance"
    t.string "type"
    t.integer "customer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_accounts_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "email", null: false
    t.string "password_digest"
    t.integer "account_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "phone"
    t.index ["account_id"], name: "index_customers_on_account_id"
    t.index ["email"], name: "index_customers_on_email", unique: true
  end

  create_table "transactions", force: :cascade do |t|
    t.string "amount"
    t.datetime "date"
    t.string "type"
    t.integer "customer_id", null: false
    t.integer "account_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_transactions_on_account_id"
    t.index ["customer_id"], name: "index_transactions_on_customer_id"
  end

  add_foreign_key "accounts", "customers"
  add_foreign_key "customers", "accounts"
  add_foreign_key "transactions", "accounts"
  add_foreign_key "transactions", "customers"
end

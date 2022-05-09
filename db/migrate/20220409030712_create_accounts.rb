class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :balance
      t.string :type
      t.references :customer, null: false, foreign_key: true
      t.timestamps
    end
  end
end
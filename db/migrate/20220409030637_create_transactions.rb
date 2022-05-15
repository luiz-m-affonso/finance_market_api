class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.string :amount
      t.datetime :date
      t.string :type

      t.timestamps
    end
  end
end

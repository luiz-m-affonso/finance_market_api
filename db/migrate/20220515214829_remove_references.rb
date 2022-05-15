class RemoveReferences < ActiveRecord::Migration[6.1]
  def change
    remove_reference :customers, :account, index: true, foreign_key: true
    remove_reference :transactions, :customer, index: true, foreign_key: true
    remove_reference :accounts, :customer, index: true, foreign_key: true
  end
end

class AddReferencesUpdate < ActiveRecord::Migration[6.1]
  def change
    add_reference :transactions, :customer, index: true
    add_reference :transactions, :account, index: true
    add_reference :accounts, :customer, index: true
  end
end

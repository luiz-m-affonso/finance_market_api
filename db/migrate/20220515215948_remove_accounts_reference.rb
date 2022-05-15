class RemoveAccountsReference < ActiveRecord::Migration[6.1]
  def change
    remove_reference :accounts, :customer, foreign_key: true
  end
end

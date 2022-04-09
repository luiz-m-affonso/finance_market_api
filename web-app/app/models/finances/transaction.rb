class Transaction < ApplicationRecord
  belongs_to :customer
  belongs_to :account

  validates_presence_of :account_id, :customer_id, :amount, :date, :type, :description
end

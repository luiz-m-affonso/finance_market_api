class Transaction < ApplicationRecord
  belongs_to :customer
  belongs_to :account

  validates :transaction_type, :amount, :date, :description, presence: true
end

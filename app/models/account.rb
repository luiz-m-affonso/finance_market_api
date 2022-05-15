class Account < ApplicationRecord
  belongs_to :customer
  has_many :transactions

  validates :balance, :account_type, presence: true
end
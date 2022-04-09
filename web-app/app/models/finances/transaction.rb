class Transaction < ApplicationRecord
  belongs_to :customer
  belongs_to :account

  validates_presence_of :amount
  validates_presence_of :date
  validates_presence_of :type
  validates_presence_of :description
end

class Finances::Account < ApplicationRecord
  belongs_to :customer
  has_many :transactions

  validates_presence_of :balance, :type, :customer_id
end

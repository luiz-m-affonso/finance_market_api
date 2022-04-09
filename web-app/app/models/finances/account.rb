class Finances::Account < ApplicationRecord
  belongs_to :customer
  has_many :transactions

  validates_presence_of :balance
  validates_presence_of :type
  validates_presence_of :customer_id
end

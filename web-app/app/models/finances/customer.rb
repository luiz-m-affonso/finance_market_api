class Customer < ApplicationRecord
  has_many :accounts
  has_many :transactions, through: :accounts

  validates_presence_of :email
  validates_presence_of :account_id
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :address
  validates_presence_of :city
  validates_presence_of :state
  validates_presence_of :zip
  validates_presence_of :phone
end

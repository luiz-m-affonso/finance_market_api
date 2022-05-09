class Customer < ApplicationRecord
  has_many :accounts
  has_many :transactions, through: :accounts

  validates_presence_of :email, :first_name, :last_name, :address, :city, :state, :country, :zip, :phone
end

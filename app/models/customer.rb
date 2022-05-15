class Customer < ApplicationRecord
  has_many :accounts, dependent: :destroy
  has_many :transactions, dependent: :destroy

  validates :email, :first_name, :last_name, :city, :state, :zip, :phone, presence: true
end

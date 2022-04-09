class Customer < ApplicationRecord
  has_many :accounts
  has_many :translations, through: :accounts
end

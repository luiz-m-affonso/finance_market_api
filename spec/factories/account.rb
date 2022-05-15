FactoryBot.define do
  factory :account do
    id { 2 }
    balance { 100.00}
    account_type { %w[checking savings money_market_deposit certificate_of_deposit].sample }
    customer_id { 1 }
  end
end

FactoryBot.define do
  factory :account do
    balance { Faker::Number.decimal(2) }
    type { %w[checking savings money_market_deposit certificate_of_deposit].sample }
  end
end

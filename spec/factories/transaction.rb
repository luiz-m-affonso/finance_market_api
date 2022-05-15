FactoryBot.define do
  factory :transaction do
    amount { Faker::Number.decimal(2) }
    date { Faker::Date.between(from: Date.today - 1.year, to: Date.today) }
    transaction_type { %w[credit debit].sample }
    description { Faker::Lorem.sentence }
  end
end

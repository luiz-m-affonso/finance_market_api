FactoryBot.define do
  factory :customer do
    password_digest { Faker::Password.digest }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Email.email }
    phone { Faker::Phone.phone }
    city { Faker::City.city }
    state { Faker::State.state }
    zip { Faker::Zip.zip }
    country { Faker::Country.country }
  end
end
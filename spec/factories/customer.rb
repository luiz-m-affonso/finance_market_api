FactoryBot.define do
  factory :customer do
    id { 1 }
    password_digest { "MyString" }
    first_name { "MyString" }
    last_name { "MyString" }
    email { "MyString" }
    phone { "MyString" }
    city { "MyString" }
    state { "MyString" }
    zip { "MyString" }
  end
end
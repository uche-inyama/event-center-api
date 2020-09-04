FactoryBot.define do
  factory :center do
    building { Faker::Address.full_address }
    hall { Faker::Name.name }
    address { Faker::Address.street_address }
    city { Faker::Address.city }
    state { Faker::Address.state }
    price { Faker::Number.number(digits: 6) }
    capacity { Faker::Number.number(digits: 6) }
  end
end
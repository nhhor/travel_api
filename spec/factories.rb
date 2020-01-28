FactoryBot.define do

  factory :destination, class: Destination do
    name { Faker::Movies::Hobbit.location }
    country { Faker::Address.country }
    city { Faker::Address.city }
  end

end

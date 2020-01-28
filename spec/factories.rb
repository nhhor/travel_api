FactoryBot.define do

  factory :destination, class: Destination do
    name { Faker::Movies::Hobbit.location }
    country { Faker::Address.country }
    city { Faker::Address.city }
  end

  factory :review, class: Review do
    review_title { Faker::Book.title }
    review_body { Faker::Restaurant.review }
    rating { 1 }
    user_id { 1 }
    destination_id { 1 }
  end
  
end

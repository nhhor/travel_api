# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


class Seed

  def self.begin
    seed = Seed.new
    seed.generate_destinations
  end

  def generate_destinations
    20.times do |i|
      destination = Destination.create!(
        name: Faker::Movies::Hobbit.location,
        country: Faker::Address.country,
        city: Faker::Address.city
      )
      puts "Added #{i}: Name is #{destination.name}, city is '#{destination.city}', country is '#{destination.country}'."
    end
  end
end

Seed.begin

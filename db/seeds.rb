# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

6.times do
      Restaurant.create(name: Faker::Superhero.name, address: Faker::Address.street_name, phone_number: Faker::PhoneNumber.cell_phone, category: "chinese")
      Restaurant.create(name: Faker::Superhero.name, address: Faker::Address.street_name, phone_number: Faker::PhoneNumber.cell_phone, category: "italian")
      Restaurant.create(name: Faker::Superhero.name, address: Faker::Address.street_name, phone_number: Faker::PhoneNumber.cell_phone, category: "japanese")
      Restaurant.create(name: Faker::Superhero.name, address: Faker::Address.street_name, phone_number: Faker::PhoneNumber.cell_phone, category: "french")
      Restaurant.create(name: Faker::Superhero.name, address: Faker::Address.street_name, phone_number: Faker::PhoneNumber.cell_phone, category: "belgian")
end

Restaurant.all.each do |restaurant|
  1..5.times do
    Review.create(restaurant_id: restaurant.id, content: Faker::StarWars.quote, rating: rand(0..5))
  end
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Destroying flats...'
Flat.destroy_all

puts 'Creating new flats...'

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

Flat.create!(
  name: 'Relax with the whole family at Bay Beach',
  address: Faker::Address.full_address,
  description: 'This spacious modern family home boasting 5 bedrooms. The main bedroom ( en-suite) has a king-size bed, the remaining four bedrooms have queen-sized beds.',
  price_per_night: rand(50..200),
  number_of_guests: rand(1..5)
)

Flat.create!(
  name: 'Farm stay',
  address: Faker::Address.full_address,
  description: 'Escape the busy life and relax in the countryside in Beautiful Kanarraville, UT. Our Friendly cows will meet you off your private back patio!',
  price_per_night: rand(50..200),
  number_of_guests: rand(1..5)
)

Flat.create!(
  name: 'JT luxury Villa exquisite design! luxury amenities',
  address: Faker::Address.full_address,
  description: 'Enjoy exploring the local national park and town, then relax in your peaceful, stylish, and modern home away from home. Experience breathtaking sunsets and starry skies while relaxing in a private hot tub or pool and preparing delicious meals on the outdoor kitchen BBQ while spending time with friends and family in our spacious patio area.',
  price_per_night: rand(50..200),
  number_of_guests: rand(1..5)
)

# 4.times do
#   flat = Flat.create!(
#     name: Faker::Lorem.sentence,
#     address: Faker::Address.full_address,
#     description: Faker::Lorem.sentences,
#     price_per_night: rand(50..200),
#     number_of_guests: rand(1..5)
#   )
#   puts "#{flat.name} added!"
#   puts "#{flat.price_per_night}"
#   puts ''
# end

puts 'Finished!'

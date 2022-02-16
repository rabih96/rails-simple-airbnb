require 'faker'

puts 'Generating fake data'

10.times do
  flat = Flat.create!(
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    description: Faker::Restaurant.description,
    price_per_night: rand(1..5) * 100,
    number_of_guests: rand(1..7)
  )
end

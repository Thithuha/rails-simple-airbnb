puts 'Cleaning up database'
Flat.destroy_all
puts 'Database is clean'

puts 'Creating flats'
10.times do
  flat = Flat.create(
  name: Faker::Address.community,
  address: Faker::Address.street_address,
  description: Faker::Marketing.buzzwords,
  price_per_night: Faker::Number.digit ,
  number_of_guests: Faker::Number.digit
)
puts "flat #{flat.id} is created"
end

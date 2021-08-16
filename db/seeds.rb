puts 'Cleaning up database'
Flat.destroy_all
puts 'Database is clean'

puts 'Creating flats'
20.times do
  flat = Flat.create(
  name: Faker::Address.community,
  address: Faker::Address.street_address,
  description: Faker::Marketing.buzzwords,
  price_per_night: Faker::Types.rb_integer,
  number_of_guests: Faker::Number.digit,
  rating: rand(1..5)
)
puts "flat #{flat.id} is created"
end

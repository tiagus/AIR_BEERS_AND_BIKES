# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying all Bikes!"
sleep(3)

Bike.destroy_all

puts "Creating 50 bikes!"
sleep(3)


50.times do
  Bike.create(
    brand: Faker::Vehicle.make,
    model: Faker::Vehicle.model,
    price: rand(125..700),
    speed: rand(120..382),
    rented: false
  )
end

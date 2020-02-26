# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Wrecking all Bikes!"
sleep(1)

Booking.destroy_all
Bike.destroy_all

puts "Creating 12 bikes!"
sleep(1)


  img1 = URI.open('https://www.soulfulbikes.com/storage/app/uploads/public/399/b7b/4a2/thumb__500x450_0_0_auto.jpg')
  bike1 = Bike.create(
    brand: 'Harley Davidson' ,
    model: 'Street Glide',
    price: rand(125..700),
    speed: rand(120..382),
    rented: false,
    address: 'Av. Amália Rodrigues, Odivelas'
  )
  bike1.photo.attach(io: img1, filename: 'bike.jpg', content_type: 'image/jpg')


  img2 = URI.open('https://www.soulfulbikes.com/storage/app/uploads/public/9e1/a15/3f8/thumb__500x450_0_0_auto.jpg')
  bike2 = Bike.create(
    brand: 'Harley Davidson' ,
    model: '1200 Custom',
    price: rand(125..700),
    speed: rand(120..382),
    rented: false,
    address: 'Largo Assunção, Cascais'
  )
  bike2.photo.attach(io: img2, filename: 'bike.jpg', content_type: 'image/jpg')


  img3 = URI.open('https://www.soulfulbikes.com/storage/app/uploads/public/9e4/414/116/thumb__500x450_0_0_auto.jpg')
  bike3 = Bike.create(
    brand: 'BMW' ,
    model: 'R Nine Tree Scrambler',
    price: rand(125..700),
    speed: rand(120..382),
    rented: false,
    address: 'Rua do Conde de Redondo, Lisboa'
  )
  bike3.photo.attach(io: img3, filename: 'bike.jpg', content_type: 'image/jpg')


  img4 = URI.open('https://www.soulfulbikes.com/storage/app/uploads/public/f35/a1b/0e5/thumb__500x450_0_0_auto.png')
  bike4 = Bike.create(
    brand: 'Triumph' ,
    model: 'Soulful Café',
    price: rand(125..700),
    speed: rand(120..382),
    rented: false,
    address: ' Alameda das Comunidades Portuguesas, Lisboa'
  )
  bike4.photo.attach(io: img4, filename: 'bike.png', content_type: 'image/png')


  img5 = URI.open('https://www.soulfulbikes.com/storage/app/uploads/public/38c/93f/b7a/thumb__500x450_0_0_auto.png')
  bike5 = Bike.create(
    brand: 'Honda' ,
    model: 'NC750X',
    price: rand(125..700),
    speed: rand(120..382),
    rented: false,
    address: 'R. Manuel Francisco Soromenho, Loures'
  )
  bike5.photo.attach(io: img5, filename: 'bike.png', content_type: 'image/png')


  img6 = URI.open('https://www.soulfulbikes.com/storage/app/uploads/public/ca3/de3/c55/thumb__500x450_0_0_auto.jpg')
  bike6 = Bike.create(
    brand: 'Royal Enfield' ,
    model: 'Classic',
    price: rand(125..700),
    speed: rand(120..382),
    rented: false,
    address: 'Escadinhas da Fonte da Pipa, Sintra'
  )
  bike6.photo.attach(io: img6, filename: 'bike.jpg', content_type: 'image/jpg')

  img7 = URI.open('https://www.soulfulbikes.com/storage/app/uploads/public/1e7/5d8/84a/thumb__500x450_0_0_auto.png')
  bike7 = Bike.create(
    brand: 'Piaggio' ,
    model: 'Vespa GTS Touring',
    price: rand(125..700),
    speed: rand(120..382),
    rented: false,
    address: 'Doca de Belém, Lisboa'
  )
  bike7.photo.attach(io: img7, filename: 'bike.png', content_type: 'image/png')


  img8 = URI.open('https://www.soulfulbikes.com/storage/app/uploads/public/2d7/149/423/thumb__500x450_0_0_auto.png')
  bike8 = Bike.create(
    brand: 'Mash' ,
    model: 'Family Side',
    price: rand(125..800),
    speed: rand(120..382),
    rented: false,
    address: ' Av. do Atlântico, Colares'
  )
  bike8.photo.attach(io: img8, filename: 'bike.png', content_type: 'image/png')


  img9 = URI.open('https://www.chelseamotorcycles.co.uk/wp-content/uploads/2018/03/2018-Zero-SR-motorbike-side-view-white.jpg')
  bike9 = Bike.create(
    brand: 'Zero' ,
    model: 'SR',
    price: rand(125..800),
    speed: rand(120..382),
    rented: false,
    address: 'Rua de Goa, Agualva'
  )
  bike9.photo.attach(io: img9, filename: 'bike.jpg', content_type: 'image/jpg')


  img10 = URI.open('https://scooters.ltd.uk/wp-content/uploads/2018/08/Honda-CB300R-road-motorbike-Candy-Chromosphere-Red-colour.png')
  bike10 = Bike.create(
    brand: 'Honda' ,
    model: '300R',
    price: rand(125..800),
    speed: rand(120..382),
    rented: false,
    address: 'Rua Humberto Madeira, Lisboa'
  )
  bike10.photo.attach(io: img10, filename: 'bike.png', content_type: 'image/png')


  img11 = URI.open('https://www.motosport.com.pt/wp-content/uploads/2018/08/2019-kawasaki-ninja-h2-4.jpg')
  bike11 = Bike.create(
    brand: 'Kawasaki' ,
    model: 'H2R',
    price: rand(700..1200),
    speed: rand(370..408),
    rented: false,
    address: 'Estrada do Cabo da Roca, Azóia'
  )
  bike11.photo.attach(io: img11, filename: 'bike.jpg', content_type: 'image/jpg')


  img12 = URI.open('https://www.motardinn.com/f/13667/136674457_4/shad-semirigid-side-bag-holder-kit-ducati-monster-1200.jpg')
  bike12 = Bike.create(
    brand: 'Ducati' ,
    model: 'Monster',
    price: rand(700..1200),
    speed: rand(170..208),
    rented: false,
    address: 'Alameda dos Oceanos, Lisboa'
  )
  bike12.photo.attach(io: img12, filename: 'bike.jpg', content_type: 'image/jpg')

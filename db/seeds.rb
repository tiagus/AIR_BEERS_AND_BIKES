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

puts "Creating 8 bikes!"
sleep(1)


  img1 = URI.open('https://www.soulfulbikes.com/storage/app/uploads/public/399/b7b/4a2/thumb__500x450_0_0_auto.jpg')
  bike1 = Bike.create(
    brand: 'Harley Davidson' ,
    model: 'Street Glide',
    price: rand(125..700),
    speed: rand(120..382),
    rented: false
  )
  bike1.photo.attach(io: img1, filename: 'bike.jpg', content_type: 'image/jpg')


  img2 = URI.open('https://www.soulfulbikes.com/storage/app/uploads/public/9e1/a15/3f8/thumb__500x450_0_0_auto.jpg')
  bike2 = Bike.create(
    brand: 'Harley Davidson' ,
    model: '1200 Custom',
    price: rand(125..700),
    speed: rand(120..382),
    rented: false
  )
  bike2.photo.attach(io: img2, filename: 'bike.jpg', content_type: 'image/jpg')


  img3 = URI.open('https://www.soulfulbikes.com/storage/app/uploads/public/9e4/414/116/thumb__500x450_0_0_auto.jpg')
  bike3 = Bike.create(
    brand: 'BMW' ,
    model: 'R Nine Tree Scrambler',
    price: rand(125..700),
    speed: rand(120..382),
    rented: false
  )
  bike3.photo.attach(io: img3, filename: 'bike.jpg', content_type: 'image/jpg')


  img4 = URI.open('https://www.soulfulbikes.com/storage/app/uploads/public/f35/a1b/0e5/thumb__500x450_0_0_auto.png')
  bike4 = Bike.create(
    brand: 'Triumph' ,
    model: 'Soulful Café',
    price: rand(125..700),
    speed: rand(120..382),
    rented: false
  )
  bike4.photo.attach(io: img4, filename: 'bike.png', content_type: 'image/png')


  img5 = URI.open('https://www.soulfulbikes.com/storage/app/uploads/public/38c/93f/b7a/thumb__500x450_0_0_auto.png')
  bike5 = Bike.create(
    brand: 'Honda' ,
    model: 'NC750X',
    price: rand(125..700),
    speed: rand(120..382),
    rented: false
  )
  bike5.photo.attach(io: img5, filename: 'bike.png', content_type: 'image/png')


  img6 = URI.open('https://www.soulfulbikes.com/storage/app/uploads/public/ca3/de3/c55/thumb__500x450_0_0_auto.jpg')
  bike6 = Bike.create(
    brand: 'Royal Enfield' ,
    model: 'Classic',
    price: rand(125..700),
    speed: rand(120..382),
    rented: false
  )
  bike6.photo.attach(io: img6, filename: 'bike.jpg', content_type: 'image/jpg')


  img7 = URI.open('https://www.soulfulbikes.com/storage/app/uploads/public/1e7/5d8/84a/thumb__500x450_0_0_auto.png')
  bike7 = Bike.create(
    brand: 'Piaggio' ,
    model: 'Vespa GTS Touring',
    price: rand(125..700),
    speed: rand(120..382),
    rented: false
  )
  bike7.photo.attach(io: img7, filename: 'bike.png', content_type: 'image/png')


  img8 = URI.open('https://www.soulfulbikes.com/storage/app/uploads/public/2d7/149/423/thumb__500x450_0_0_auto.png')
  bike8 = Bike.create(
    brand: 'Mash' ,
    model: 'Family Side',
    price: rand(125..800),
    speed: rand(120..382),
    rented: false
  )
  bike8.photo.attach(io: img8, filename: 'bike.png', content_type: 'image/png')

  img9 = URI.open('https://www.chelseamotorcycles.co.uk/wp-content/uploads/2018/03/2018-Zero-SR-motorbike-side-view-white.jpg')
  bike9 = Bike.create(
    brand: 'Zero' ,
    model: 'SR',
    price: rand(125..800),
    speed: rand(120..382),
    rented: false
  )
  bike9.photo.attach(io: img9, filename: 'bike.jpg', content_type: 'image/jpg')

  img10 = URI.open('https://scooters.ltd.uk/wp-content/uploads/2018/08/Honda-CB300R-road-motorbike-Candy-Chromosphere-Red-colour.png')
  bike10 = Bike.create(
    brand: 'Honda' ,
    model: '300R',
    price: rand(125..800),
    speed: rand(120..382),
    rented: false
  )
  bike10.photo.attach(io: img10, filename: 'bike.png', content_type: 'image/png')


  img11 = URI.open('https://img.pixers.pics/pho_wat(s3:700/FO/54/15/73/69/700_FO54157369_166def02d6a512d24c3269f92df956a0.jpg,700,468,cms:2018/10/5bd1b6b8d04b8_220x50-watermark.png,over,480,418,jpg)/stickers-custom-black-motorcycle-side-view-on-a-white-background.jpg')
  bike11 = Bike.create(
    brand: 'Harley Davidson' ,
    model: 'Turbolenta',
    price: rand(125..800),
    speed: rand(200..280),
    rented: false
  )
  bike11.photo.attach(io: img11, filename: 'bike.jpg', content_type: 'image/jpg')

  img11 = URI.open('https://www.motosport.com.pt/wp-content/uploads/2018/08/2019-kawasaki-ninja-h2-4.jpg')
  bike11 = Bike.create(
    brand: 'Kawasaki' ,
    model: 'H2R',
    price: rand(700..1200),
    speed: rand(370..408),
    rented: false
  )
  bike11.photo.attach(io: img11, filename: 'bike.jpg', content_type: 'image/jpg')

  img12 = URI.open('https://5.imimg.com/data5/PQ/RR/GLADMIN-69966587/honda-cb-hornet-160r-std-bike-500x500.png')
  bike12 = Bike.create(
    brand: 'Honda' ,
    model: 'Hornet 160R',
    price: rand(700..1200),
    speed: rand(170..208),
    rented: false
  )
  bike12.photo.attach(io: img12, filename: 'bike.png', content_type: 'image/png')

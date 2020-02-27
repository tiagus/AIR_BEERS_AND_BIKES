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
    speed: rand(120..140),
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
    price: rand(300...1000),
    speed: rand(120..382),
    rented: false,
    address: 'Rua do Conde de Redondo, Lisboa'
  )
  bike3.photo.attach(io: img3, filename: 'bike.jpg', content_type: 'image/jpg')


  img4 = URI.open('https://www.soulfulbikes.com/storage/app/uploads/public/f35/a1b/0e5/thumb__500x450_0_0_auto.png')
  bike4 = Bike.create(
    brand: 'Triumph' ,
    model: 'Soulful Café',
    price: rand(250..400),
    speed: rand(120..382),
    rented: false,
    address: ' Alameda das Comunidades Portuguesas, Lisboa'
  )
  bike4.photo.attach(io: img4, filename: 'bike.png', content_type: 'image/png')


  img5 = URI.open('https://www.soulfulbikes.com/storage/app/uploads/public/38c/93f/b7a/thumb__500x450_0_0_auto.png')
  bike5 = Bike.create(
    brand: 'Honda' ,
    model: 'NC750X',
    price: rand(125..250),
    speed: rand(120..382),
    rented: false,
    address: 'R. Manuel Francisco Soromenho, Loures'
  )
  bike5.photo.attach(io: img5, filename: 'bike.png', content_type: 'image/png')


  img6 = URI.open('https://www.soulfulbikes.com/storage/app/uploads/public/ca3/de3/c55/thumb__500x450_0_0_auto.jpg')
  bike6 = Bike.create(
    brand: 'Royal Enfield' ,
    model: 'Classic',
    price: rand(350...500),
    speed: rand(120..382),
    rented: false,
    address: 'Escadinhas da Fonte da Pipa, Sintra'
  )
  bike6.photo.attach(io: img6, filename: 'bike.jpg', content_type: 'image/jpg')

  img7 = URI.open('https://www.soulfulbikes.com/storage/app/uploads/public/1e7/5d8/84a/thumb__500x450_0_0_auto.png')
  bike7 = Bike.create(
    brand: 'Piaggio' ,
    model: 'Vespa GTS Touring',
    price: rand(75..150),
    speed: rand(120..382),
    rented: false,
    address: 'Doca de Belém, Lisboa'
  )
  bike7.photo.attach(io: img7, filename: 'bike.png', content_type: 'image/png')


  img8 = URI.open('https://www.soulfulbikes.com/storage/app/uploads/public/2d7/149/423/thumb__500x450_0_0_auto.png')
  bike8 = Bike.create(
    brand: 'Mash' ,
    model: 'Family Side',
    price: rand(125...300),
    speed: rand(120..150),
    rented: false,
    address: ' Av. do Atlântico, Colares'
  )
  bike8.photo.attach(io: img8, filename: 'bike.png', content_type: 'image/png')


  img9 = URI.open('https://www.chelseamotorcycles.co.uk/wp-content/uploads/2018/03/2018-Zero-SR-motorbike-side-view-white.jpg')
  bike9 = Bike.create(
    brand: 'Zero' ,
    model: 'SR',
    price: rand(300...350),
    speed: rand(120..382),
    rented: false,
    address: 'Rua de Goa, Agualva'
  )
  bike9.photo.attach(io: img9, filename: 'bike.jpg', content_type: 'image/jpg')


  img10 = URI.open('https://scooters.ltd.uk/wp-content/uploads/2018/08/Honda-CB300R-road-motorbike-Candy-Chromosphere-Red-colour.png')
  bike10 = Bike.create(
    brand: 'Honda' ,
    model: '300R',
    price: rand(125...300),
    speed: rand(120...140),
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

  img13 = URI.open('http://www.honda-geneve.com/catalog/2018/GL1800/18_Honda_Gold_Wing_Tour_blue.jpg')
  bike13 = Bike.create(
    brand: 'Honda' ,
    model: 'Goldwing GL1800',
    price: rand(700...800),
    speed: rand(120...130),
    rented: false,
    address: 'Praca da Liberdade, Porto'
  )

  bike13.photo.attach(io: img13, filename: 'bike.jpg', content_type: 'image/jpg')

  img14 = URI.open('https://cdp.azureedge.net/products/USA/CA/2019/MC/MOTORCYCLE3/SPYDER_RT_LIMITED/50/PHOENIX_ORANGE_METALLIC_-_DARK_EDITION/2000000001.jpg')
  bike14 = Bike.create(
    brand: 'Can Am' ,
    model: 'Spyder',
    price: rand(1000...1200),
    speed: rand(140..160),
    rented: false,
    address: 'Rua dos Bombeiros Voluntarios, Portimao'
  )
  bike14.photo.attach(io: img14, filename: 'bike.jpg', content_type: 'image/jpg')

  img15 = URI.open('https://www.asphaltandrubber.com/wp-content/gallery/2013-kawasaki-ninja-z800-z800e/2013-kawasaki-ninja-z800-20.jpg')
  bike15 = Bike.create(
    brand: 'Kawasaki' ,
    model: 'Ninja 800',
    price: rand(600...750),
    speed: rand(170..208),
    rented: false,
    address: 'Avenida da Boavista, Porto'
  )
  bike15.photo.attach(io: img15, filename: 'bike.jpg', content_type: 'image/jpg')

  img16 = URI.open('https://www.totalmotorcycle.com/wp-content/uploads/2018/10/2019-Suzuki-Katana6.jpg')
  bike16 = Bike.create(
    brand: 'Suzuki' ,
    model: 'Katana',
    price: rand(700..1200),
    speed: rand(170..208),
    rented: false,
    address: 'Rua de Campolide, Lisboa'
  )
  bike16.photo.attach(io: img16, filename: 'bike.jpg', content_type: 'image/jpg')

  img17 = URI.open('https://pictures.topspeed.com/IMG/jpg/201512/2016-bmw-r-1200-gs-r-1200-3.jpg')
  bike17 = Bike.create(
    brand: 'BMW' ,
    model: 'R 1200 GS',
    price: rand(700..1200),
    speed: rand(170..208),
    rented: false,
    address: 'Rua Gil Vicente, Lisboa'
  )
  bike17.photo.attach(io: img17, filename: 'bike.jpg', content_type: 'image/jpg')

  img18 = URI.open('https://c.ndtvimg.com/2019-04/sv05tpcs_2019-honda-africa-twin_625x300_03_April_19.jpg')
  bike18 = Bike.create(
    brand: 'Honda' ,
    model: 'Africa Twin',
    price: rand(700...950),
    speed: rand(170..190),
    rented: false,
    address: 'Rua Mario Castrim, Lisboa'
  )
  bike18.photo.attach(io: img18, filename: 'bike.jpg', content_type: 'image/jpg')

  img19 = URI.open('https://cdp.azureedge.net/products/USA/YA/2019/MC/SPORT/MT-09/50/ICE_FLUO/2000000013.jpg')
  bike19 = Bike.create(
    brand: 'Yamaha' ,
    model: 'MT-09',
    price: rand(700...800),
    speed: rand(170...200),
    rented: false,
    address: 'Rua Luis Mota Feo, Luanda'
  )
  bike19.photo.attach(io: img19, filename: 'bike.jpg', content_type: 'image/jpg')

  img20 = URI.open('https://content.kawasaki.com/Content/Uploads/Products/7497/Colors/hfduhvgf.m1s.png')
  bike20 = Bike.create(
    brand: 'Kawasaki' ,
    model: 'Z650',
    price: rand(700..1200),
    speed: rand(170..208),
    rented: false,
    address: 'Rua Conde de Almoster, Lisboa'
  )
  bike20.photo.attach(io: img20, filename: 'bike.png', content_type: 'image/png')

  img21 = URI.open('https://mcn-images.bauersecure.com/pagefiles/631750/gsx-r125-1.jpg')
  bike21 = Bike.create(
    brand: 'Suzuki' ,
    model: 'GSX-R125',
    price: rand(700..1200),
    speed: rand(170..208),
    rented: false,
    address: 'Rua dos Sapadores, Lisboa'
  )
  bike21.photo.attach(io: img21, filename: 'bike.jpg', content_type: 'image/jpg')

  img22 = URI.open('https://www.asphaltandrubber.com/wp-content/uploads/2018/02/2018-Triumph-Speed-Triple-RS-02.jpg')
  bike22 = Bike.create(
    brand: 'Triumph' ,
    model: 'Speed Triple',
    price: rand(300...500),
    speed: rand(120...140),
    rented: false,
    address: 'Rua de Xabregas, Lisboa'
  )
  bike22.photo.attach(io: img22, filename: 'bike.jpg', content_type: 'image/jpg')

  img23 = URI.open('https://autowise.com/wp-content/uploads/2018/02/Naked-Bikes-Aprilia-Tuono-V4-1100.jpg')
  bike23 = Bike.create(
    brand: 'Aprilia' ,
    model: 'Tuono V4',
    price: rand(800..1200),
    speed: rand(170..200),
    rented: false,
    address: 'Rua Sidonio Pais, Algarve'
  )
  bike23.photo.attach(io: img23, filename: 'bike.jpg', content_type: 'image/jpg')

  img24 = URI.open('https://autowise.com/wp-content/uploads/2018/02/Naked-Bikes-KTM-1290-Super-Duke-R.jpg')
  bike24 = Bike.create(
    brand: 'KTM' ,
    model: '1290 Super Duke R',
    price: rand(800..1200),
    speed: rand(170..208),
    rented: false,
    address: 'Rua da Veronica, Lisboa'
  )
  bike24.photo.attach(io: img24, filename: 'bike.jpg', content_type: 'image/jpg')

  img25 = URI.open('https://autowise.com/wp-content/uploads/2018/02/Naked-Bikes-Yamaha-FZ-10.jpg')
  bike25 = Bike.create(
    brand: 'Yamaha' ,
    model: 'FZ-10',
    price: rand(600..750),
    speed: rand(110..150),
    rented: false,
    address: 'Rua Visconde de Satarem, Lisboa'
  )
  bike25.photo.attach(io: img25, filename: 'bike.jpg', content_type: 'image/jpg')

  img26 = URI.open('https://www.gillestooling.com/media/image/54/20/ec/BMW-S1000R-2017_1280x1280.jpg')
  bike26 = Bike.create(
    brand: 'BMW' ,
    model: 'S1000R',
    price: rand(900...1000),
    speed: rand(160..200),
    rented: false,
    address: 'Avendia do Brasil, Lisboa'
  )
  bike26.photo.attach(io: img26, filename: 'bike.jpg', content_type: 'image/jpg')

  img27 = URI.open('https://blog.gaadikey.com/wp-content/uploads/2017/08/Suzuki-Gixxer-SF-ABS-Launch.jpg')
  bike27 = Bike.create(
    brand: 'Suzuki' ,
    model: 'Gixxer 150',
    price: rand(700..1200),
    speed: rand(110...130),
    rented: false,
    address: 'Rua Rainha Ginga, Luanda'
  )
  bike27.photo.attach(io: img27, filename: 'bike.jpg', content_type: 'image/jpg')

  img28 = URI.open('https://www.totalmotorcycle.com/wp-content/uploads/2016/12/2009-Kawasaki-ZX-10Rf.jpg')
  bike28 = Bike.create(
    brand: 'Kawasaki' ,
    model: 'Ninja ZX-10',
    price: rand(700..1200),
    speed: rand(170..208),
    rented: false,
    address: 'Rua Jose Estevao, Algarve'
  )
  bike28.photo.attach(io: img28, filename: 'bike.jpg', content_type: 'image/jpg')

  img29 = URI.open('https://www.totalmotorcycle.com/wp-content/uploads/2016/12/2009-Kawasaki-ZX-10Rf.jpg')
  bike29 = Bike.create(
    brand: 'BMW' ,
    model: 'R1200RT',
    price: rand(1100...1300),
    speed: rand(170..208),
    rented: false,
    address: 'Rua Engracia Fragoso, Luanda'
  )
  bike29.photo.attach(io: img29, filename: 'bike.jpg', content_type: 'image/jpg')

  img30 = URI.open('http://i1.wp.com/www.asphaltandrubber.com/wp-content/uploads/2016/11/2017-Triumph-Street-Scrambler-studio-15.jpg')
  bike30 = Bike.create(
    brand: 'Triumph' ,
    model: 'Street Scrambler',
    price: rand(600..700),
    speed: rand(140..150),
    rented: false,
    address: 'Rua Epifanio Dias, Lisboa'
  )
  bike30.photo.attach(io: img30, filename: 'bike.jpg', content_type: 'image/jpg')

  img31 = URI.open('https://pictures.topspeed.com/IMG/crop/201303/2013-suzuki-tu250x-1_600x0w.jpg')
  bike31 = Bike.create(
    brand: 'Suzuki' ,
    model: 'TU250X',
    price: rand(550...750),
    speed: rand(150...160),
    rented: false,
    address: 'Rua Alfredo Cortes, Lisboa'
  )
  bike31.photo.attach(io: img31, filename: 'bike.jpg', content_type: 'image/jpg')

  img32 = URI.open('https://pictures.topspeed.com/IMG/crop/201303/2013-suzuki-boulevard-c50-3_1600x0w.jpg')
  bike32 = Bike.create(
    brand: 'Suzuki' ,
    model: 'Boulevard C50 Special Edition',
    price: rand(700..1200),
    speed: rand(110...120),
    rented: false,
    address: 'Rua Alfredo Cortes, Lisboa'
  )
  bike32.photo.attach(io: img32, filename: 'bike.jpg', content_type: 'image/jpg')


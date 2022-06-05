require 'faker'
require "open-uri"

puts "Cleaning up database..."
Boat.delete_all
Booking.delete_all
User.delete_all
Review.delete_all

puts "Database cleaned"

puts 'Creating Users...'

user1 = User.create(email: "email@email.com", password: "123456")
user2 = User.create(email: "email2@email.com", password: "123456")
user3 = User.create(email: "email3@email.com", password: "123456")
user4 = User.create(email: "email4@email.com", password: "123456")
user5 = User.create(email: "email5@email.com", password: "123456")
user6 = User.create(email: "email6@email.com", password: "123456")
user7 = User.create(email: "email7@email.com", password: "123456")
user8 = User.create(email: "email8@email.com", password: "123456")
user9 = User.create(email: "email9@email.com", password: "123456")
user10 = User.create(email: "email10@email.com", password: "123456")

puts 'Creating Boats...'

file = URI.open('https://tinyurl.com/23vsvy33')
file2 = URI.open('https://tinyurl.com/3rxatv8n')
file3 = URI.open('https://tinyurl.com/ycytfv8d')


boat1 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  location: Faker::Address.street_address,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat1.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat1.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat1.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://tinyurl.com/23vsvy33')
file2 = URI.open('https://tinyurl.com/3rxatv8n')
file3 = URI.open('https://tinyurl.com/ycytfv8d')

boat2 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  location: Faker::Address.street_address,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat2.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat2.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat2.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://tinyurl.com/23vsvy33')
file2 = URI.open('https://tinyurl.com/3rxatv8n')
file3 = URI.open('https://tinyurl.com/ycytfv8d')

boat3 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  location: Faker::Address.street_address,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat3.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat3.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat3.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://tinyurl.com/23vsvy33')
file2 = URI.open('https://tinyurl.com/3rxatv8n')
file3 = URI.open('https://tinyurl.com/ycytfv8d')

boat4 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  location: Faker::Address.street_address,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat4.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat4.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat4.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://tinyurl.com/23vsvy33')
file2 = URI.open('https://tinyurl.com/3rxatv8n')
file3 = URI.open('https://tinyurl.com/ycytfv8d')

boat5 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  location: Faker::Address.street_address,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat5.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat5.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat5.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://tinyurl.com/23vsvy33')
file2 = URI.open('https://tinyurl.com/3rxatv8n')
file3 = URI.open('https://tinyurl.com/ycytfv8d')

boat6 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  location: Faker::Address.street_address,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat6.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat6.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat6.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://tinyurl.com/23vsvy33')
file2 = URI.open('https://tinyurl.com/3rxatv8n')
file3 = URI.open('https://tinyurl.com/ycytfv8d')

boat7 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  location: Faker::Address.street_address,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat7.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat7.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat7.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://tinyurl.com/23vsvy33')
file2 = URI.open('https://tinyurl.com/3rxatv8n')
file3 = URI.open('https://tinyurl.com/ycytfv8d')

boat8 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  location: Faker::Address.street_address,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat8.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat8.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat8.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://tinyurl.com/23vsvy33')
file2 = URI.open('https://tinyurl.com/3rxatv8n')
file3 = URI.open('https://tinyurl.com/ycytfv8d')

boat9 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  location: Faker::Address.street_address,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat9.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat9.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat9.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://tinyurl.com/23vsvy33')
file2 = URI.open('https://tinyurl.com/3rxatv8n')
file3 = URI.open('https://tinyurl.com/ycytfv8d')

boat10 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  location: Faker::Address.street_address,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat10.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat10.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat10.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://tinyurl.com/23vsvy33')
file2 = URI.open('https://tinyurl.com/3rxatv8n')
file3 = URI.open('https://tinyurl.com/ycytfv8d')

boat11 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  location: Faker::Address.street_address,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat11.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat11.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat11.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://tinyurl.com/23vsvy33')
file2 = URI.open('https://tinyurl.com/3rxatv8n')
file3 = URI.open('https://tinyurl.com/ycytfv8d')

boat12 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  location: Faker::Address.street_address,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat12.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat12.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat12.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://tinyurl.com/23vsvy33')
file2 = URI.open('https://tinyurl.com/3rxatv8n')
file3 = URI.open('https://tinyurl.com/ycytfv8d')

boat13 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  location: Faker::Address.street_address,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat13.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat13.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat13.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://tinyurl.com/23vsvy33')
file2 = URI.open('https://tinyurl.com/3rxatv8n')
file3 = URI.open('https://tinyurl.com/ycytfv8d')

boat14 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  location: Faker::Address.street_address,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat14.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat14.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat14.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://tinyurl.com/23vsvy33')
file2 = URI.open('https://tinyurl.com/3rxatv8n')
file3 = URI.open('https://tinyurl.com/ycytfv8d')

boat15 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  location: Faker::Address.street_address,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat15.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat15.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat15.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://tinyurl.com/23vsvy33')
file2 = URI.open('https://tinyurl.com/3rxatv8n')
file3 = URI.open('https://tinyurl.com/ycytfv8d')

boat16 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  location: Faker::Address.street_address,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat16.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat16.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat16.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://tinyurl.com/23vsvy33')
file2 = URI.open('https://tinyurl.com/3rxatv8n')
file3 = URI.open('https://tinyurl.com/ycytfv8d')

boat17 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  location: Faker::Address.street_address,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat17.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat17.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat17.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://tinyurl.com/23vsvy33')
file2 = URI.open('https://tinyurl.com/3rxatv8n')
file3 = URI.open('https://tinyurl.com/ycytfv8d')

boat18 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  location: Faker::Address.street_address,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat18.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat18.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat18.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://tinyurl.com/23vsvy33')
file2 = URI.open('https://tinyurl.com/3rxatv8n')
file3 = URI.open('https://tinyurl.com/ycytfv8d')

boat19 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  location: Faker::Address.street_address,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat19.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat19.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat19.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://tinyurl.com/23vsvy33')
file2 = URI.open('https://tinyurl.com/3rxatv8n')
file3 = URI.open('https://tinyurl.com/ycytfv8d')

boat20 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  location: Faker::Address.street_address,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat20.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat20.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat20.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://tinyurl.com/23vsvy33')
file2 = URI.open('https://tinyurl.com/3rxatv8n')
file3 = URI.open('https://tinyurl.com/ycytfv8d')

boat21 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  location: Faker::Address.street_address,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat21.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat21.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat21.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

puts 'Creating Bookings'

booking1 = Booking.create!(
  user: user1,
  boat: boat1,
  start_date: DateTime.strptime("08/06/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("10/06/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking2 = Booking.create!(
  user: user2,
  boat: boat2,
  start_date: DateTime.strptime("08/07/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("10/07/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking3 = Booking.create!(
  user: user3,
  boat: boat3,
  start_date: DateTime.strptime("08/08/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("10/08/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking4 = Booking.create!(
  user: user4,
  boat: boat4,
  start_date: DateTime.strptime("08/09/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("10/09/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking5 = Booking.create!(
  user: user5,
  boat: boat5,
  start_date: DateTime.strptime("08/10/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("10/10/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking6 = Booking.create!(
  user: user6,
  boat: boat6,
  start_date: DateTime.strptime("08/11/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("10/11/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking7 = Booking.create!(
  user: user7,
  boat: boat7,
  start_date: DateTime.strptime("08/12/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("10/12/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking8 = Booking.create!(
  user: user8,
  boat: boat8,
  start_date: DateTime.strptime("08/01/2023 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("10/01/2023 17:00", "%d/%m/%Y %H:%M"),
)
booking9 = Booking.create!(
  user: user9,
  boat: boat9,
  start_date: DateTime.strptime("25/09/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("27/09/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking10 = Booking.create!(
  user: user10,
  boat: boat10,
  start_date: DateTime.strptime("27/06/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("29/06/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking11 = Booking.create!(
  user: user1,
  boat: boat11,
  start_date: DateTime.strptime("30/06/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("01/07/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking12 = Booking.create!(
  user: user2,
  boat: boat12,
  start_date: DateTime.strptime("02/07/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("04/07/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking13 = Booking.create!(
  user: user3,
  boat: boat13,
  start_date: DateTime.strptime("14/06/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("16/06/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking14 = Booking.create!(
  user: user4,
  boat: boat14,
  start_date: DateTime.strptime("14/10/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("16/10/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking15 = Booking.create!(
  user: user5,
  boat: boat15,
  start_date: DateTime.strptime("16/06/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("18/06/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking16 = Booking.create!(
  user: user6,
  boat: boat16,
  start_date: DateTime.strptime("19/06/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("21/06/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking17 = Booking.create!(
  user: user7,
  boat: boat17,
  start_date: DateTime.strptime("10/12/2023 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("13/12/2023 17:00", "%d/%m/%Y %H:%M"),
)
booking18 = Booking.create!(
  user: user8,
  boat: boat18,
  start_date: DateTime.strptime("20/07/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("24/07/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking19 = Booking.create!(
  user: user9,
  boat: boat19,
  start_date: DateTime.strptime("26/07/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("29/07/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking20 = Booking.create!(
  user: user10,
  boat: boat20,
  start_date: DateTime.strptime("01/08/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("03/08/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking21 = Booking.create!(
  user: user1,
  boat: boat21,
  start_date: DateTime.strptime("04/08/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("08/08/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking22 = Booking.create!(
  user: user2,
  boat: boat1,
  start_date: DateTime.strptime("09/08/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("13/08/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking23 = Booking.create!(
  user: user3,
  boat: boat2,
  start_date: DateTime.strptime("14/08/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("20/08/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking24 = Booking.create!(
  user: user4,
  boat: boat3,
  start_date: DateTime.strptime("22/08/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("24/08/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking25 = Booking.create!(
  user: user5,
  boat: boat4,
  start_date: DateTime.strptime("22/09/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("24/09/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking26 = Booking.create!(
  user: user6,
  boat: boat5,
  start_date: DateTime.strptime("22/06/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("24/06/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking27 = Booking.create!(
  user: user7,
  boat: boat6,
  start_date: DateTime.strptime("22/02/2023 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("24/02/2023 17:00", "%d/%m/%Y %H:%M"),
)
booking28 = Booking.create!(
  user: user8,
  boat: boat7,
  start_date: DateTime.strptime("20/11/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("24/11/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking29 = Booking.create!(
  user: user9,
  boat: boat8,
  start_date: DateTime.strptime("17/11/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("19/11/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking30 = Booking.create!(
  user: user10,
  boat: boat9,
  start_date: DateTime.strptime("17/10/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("19/10/2022 17:00", "%d/%m/%Y %H:%M"),
)
booking31 = Booking.create!(
  user: user1,
  boat: boat10,
  start_date: DateTime.strptime("13/10/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("15/10/2022 17:00", "%d/%m/%Y %H:%M"),
)

puts 'Creating Reviews'

Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user1,
  booking: booking1
)
Review.create!(
  rating: 2,
  comment: "I had a terrible time. My umbrella blew away and got lost in the ocean. We also didnt see any dolphins as promise!",
  user: user2,
  booking: booking2
)
Review.create!(
  rating: 5,
  comment: "Wow, what an excellent experience! We enjoyed our time thoroughly and the memories will last a lifetime, TANKYOU!",
  user: user3,
  booking: booking3
)
Review.create!(
  rating: 3,
  comment: "Really not sure. It was ok, I guess. I won a competition for this so at least it didnt cost me anything...!",
  user: user4,
  booking: booking4
)
Review.create!(
  rating: 5,
  comment: "Wow, what an excellent experience! We enjoyed our time thoroughly and the memories will last a lifetime, TANKYOU!",
  user: user5,
  booking: booking5
)
Review.create!(
  rating: 2,
  comment: "I had a terrible time. My umbrella blew away and got lost in the ocean. We also didnt see any dolphins as promise!",
  user: user6,
  booking: booking6
)
Review.create!(
  rating: 3,
  comment: "Really not sure. It was ok, I guess. I won a competition for this so at least it didnt cost me anything...",
  user: user7,
  booking: booking7
)
Review.create!(
  rating: 2,
  comment: "I had a terrible time. My umbrella blew away and got lost in the ocean. We also didnt see any dolphins as promise!",
  user: user8,
  booking: booking8
)
Review.create!(
  rating: 2,
  comment: "I had a terrible time. My umbrella blew away and got lost in the ocean. We also didnt see any dolphins as promise!",
  user: user9,
  booking: booking9
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user10,
  booking: booking10
)
Review.create!(
  rating: 3,
  comment: "Really not sure. It was ok, I guess. I won a competition for this so at least it didnt cost me anything...",
  user: user1,
  booking: booking11
)
Review.create!(
  rating: 2,
  comment: "I had a terrible time. My umbrella blew away and got lost in the ocean. We also didnt see any dolphins as promise!",
  user: user2,
  booking: booking12
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user3,
  booking: booking13
)
Review.create!(
  rating: 5,
  comment: "Wow, what an excellent experience! We enjoyed our time thoroughly and the memories will last a lifetime, TANKYOU!",
  user: user4,
  booking: booking14
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user5,
  booking: booking15
)
Review.create!(
  rating: 2,
  comment: "I had a terrible time. My umbrella blew away and got lost in the ocean. We also didnt see any dolphins as promise!",
  user: user6,
  booking: booking16
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user7,
  booking: booking17
)
Review.create!(
  rating: 5,
  comment: "Wow, what an excellent experience! We enjoyed our time thoroughly and the memories will last a lifetime, TANKYOU!",
  user: user8,
  booking: booking18
)
Review.create!(
  rating: 3,
  comment: "Loved it. But could have been a bit longer and less expensive!",
  user: user9,
  booking: booking19
)
Review.create!(
  rating: 2,
  comment: "I had a terrible time. My umbrella blew away and got lost in the ocean. We also didnt see any dolphins as promise!",
  user: user10,
  booking: booking20
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user1,
  booking: booking21
)
Review.create!(
  rating: 3,
  comment: "Loved it. But could have been a bit longer and less expensive!",
  user: user2,
  booking: booking22
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user3,
  booking: booking23
)
Review.create!(
  rating: 2,
  comment: "I had a terrible time. My umbrella blew away and got lost in the ocean. We also didnt see any dolphins as promise!",
  user: user4,
  booking: booking24
)
Review.create!(
  rating: 5,
  comment: "Wow, what an excellent experience! We enjoyed our time thoroughly and the memories will last a lifetime, TANKYOU!",
  user: user5,
  booking: booking25
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user6,
  booking: booking26
)
Review.create!(
  rating: 1,
  comment: "Terrible",
  user: user7,
  booking: booking27
)
Review.create!(
  rating: 2,
  comment: "I had a terrible time. My umbrella blew away and got lost in the ocean. We also didnt see any dolphins as promise!",
  user: user8,
  booking: booking28
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user9,
  booking: booking29
)
Review.create!(
  rating: 1,
  comment: "Terrible",
  user: user10,
  booking: booking30
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user1,
  booking: booking31
)
Review.create!(
  rating: 5,
  comment: "Wow, what an excellent experience! We enjoyed our time thoroughly and the memories will last a lifetime, TANKYOU!",
  user: user2,
  booking: booking2
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user3,
  booking: booking3
)
Review.create!(
  rating: 5,
  comment: "Wow, what an excellent experience! We enjoyed our time thoroughly and the memories will last a lifetime, TANKYOU!",
  user: user4,
  booking: booking4
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user5,
  booking: booking5
)
Review.create!(
  rating: 5,
  comment: "Wow, what an excellent experience! We enjoyed our time thoroughly and the memories will last a lifetime, TANKYOU!",
  user: user6,
  booking: booking6
)
Review.create!(
  rating: 4,
  comment: "This was a stag do. Captain was great. They even joined us for dinner! Would book again",
  user: user6,
  booking: booking16
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user7,
  booking: booking7
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user8,
  booking: booking8
)
Review.create!(
  rating: 4,
  comment: "This was a stag do. Captain was great. They even joined us for dinner! Would book again",
  user: user9,
  booking: booking9
)
Review.create!(
  rating: 4,
  comment: "This was a stag do. Captain was great. They even joined us for dinner! Would book again",
  user: user10,
  booking: booking10
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user1,
  booking: booking11
)
Review.create!(
  rating: 5,
  comment: "Wow, what an excellent experience! We enjoyed our time thoroughly and the memories will last a lifetime, TANKYOU!",
  user: user2,
  booking: booking12
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user3,
  booking: booking13
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user4,
  booking: booking14
)
Review.create!(
  rating: 4,
  comment: "I had a great time!",
  user: user5,
  booking: booking15
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user6,
  booking: booking16
)
Review.create!(
  rating: 5,
  comment: "Wow, what an excellent experience! We enjoyed our time thoroughly and the memories will last a lifetime, TANKYOU!",
  user: user7,
  booking: booking17
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user8,
  booking: booking18
)
Review.create!(
  rating: 4,
  comment: "I had a great time!",
  user: user9,
  booking: booking19
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user10,
  booking: booking20
)
Review.create!(
  rating: 4,
  comment: "I had a great time!",
  user: user1,
  booking: booking21
)
Review.create!(
  rating: 5,
  comment: "Wow, what an excellent experience! We enjoyed our time thoroughly and the memories will last a lifetime, TANKYOU!",
  user: user2,
  booking: booking22
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user3,
  booking: booking23
)
Review.create!(
  rating: 4,
  comment: "I had a great time!",
  user: user4,
  booking: booking24
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user5,
  booking: booking25
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user6,
  booking: booking26
)
Review.create!(
  rating: 5,
  comment: "Wow, what an excellent experience! We enjoyed our time thoroughly and the memories will last a lifetime, TANKYOU!",
  user: user7,
  booking: booking27
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user8,
  booking: booking28
)
Review.create!(
  rating: 5,
  comment: "Wow, what an excellent experience! We enjoyed our time thoroughly and the memories will last a lifetime, TANKYOU!",
  user: user9,
  booking: booking29
)
Review.create!(
  rating: 4,
  comment: "I had a great time!",
  user: user10,
  booking: booking30
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user1,
  booking: booking31
)
Review.create!(
  rating: 4,
  comment: "I had a great time!",
  user: user2,
  booking: booking2
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user4,
  booking: booking4
)
Review.create!(
  rating: 5,
  comment: "Wow, what an excellent experience! We enjoyed our time thoroughly and the memories will last a lifetime, TANKYOU!",
  user: user5,
  booking: booking5
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user6,
  booking: booking6
)
Review.create!(
  rating: 3,
  comment: "It was ok! I enjoyed the boat but the food wasnt so good and the captain wasnt very nice.",
  user: user7,
  booking: booking7
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user8,
  booking: booking8
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user9,
  booking: booking9
)
Review.create!(
  rating: 5,
  comment: "Wow, what an excellent experience! We enjoyed our time thoroughly and the memories will last a lifetime, TANKYOU!",
  user: user10,
  booking: booking10
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user1,
  booking: booking1
)
Review.create!(
  rating: 3,
  comment: "It was ok! I enjoyed the boat but the food wasnt so good and the captain wasnt very nice.",
  user: user2,
  booking: booking2
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user3,
  booking: booking3
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user4,
  booking: booking4
)
Review.create!(
  rating: 5,
  comment: "Wow, what an excellent experience! We enjoyed our time thoroughly and the memories will last a lifetime, TANKYOU!",
  user: user5,
  booking: booking5
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user6,
  booking: booking6
)
Review.create!(
  rating: 3,
  comment: "It was ok! I enjoyed the boat but the food wasnt so good and the captain wasnt very nice.",
  user: user7,
  booking: booking7
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user8,
  booking: booking8
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user9,
  booking: booking9
)
Review.create!(
  rating: 5,
  comment: "Wow, what an excellent experience! We enjoyed our time thoroughly and the memories will last a lifetime, TANKYOU!!",
  user: user10,
  booking: booking10
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user1,
  booking: booking1
)
Review.create!(
  rating: 2,
  comment: "It was ok.. Food was ok. Felt a bit seasick. Probably wouldnt try again.",
  user: user2,
  booking: booking2
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user3,
  booking: booking3
)
Review.create!(
  rating: 2,
  comment: "It was ok.. Food was ok. Felt a bit seasick. Probably wouldnt try again.",
  user: user4,
  booking: booking4
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user5,
  booking: booking5
)
Review.create!(
  rating: 2,
  comment: "It was ok.. Food was ok. Felt a bit seasick. Probably wouldnt try again.",
  user: user6,
  booking: booking6
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user7,
  booking: booking7
)
Review.create!(
  rating: 2,
  comment: "It was ok.. Food was ok. Felt a bit seasick. Probably wouldnt try again.",
  user: user8,
  booking: booking8
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user9,
  booking: booking9
)
Review.create!(
  rating: 1,
  comment: "Boat got lost. Then almost sank. Had to use the lifeboats and get rescued. I wouldnt do it again!",
  user: user10,
  booking: booking10
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user1,
  booking: booking1
)
Review.create!(
  rating: 1,
  comment: "Boat got lost. Then almost sank. Had to use the lifeboats and get rescued. I wouldnt do it again!",
  user: user2,
  booking: booking2
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user3,
  booking: booking3
)
Review.create!(
  rating: 1,
  comment: "Boat got lost. Then almost sank. Had to use the lifeboats and get rescued. I wouldnt do it again!",
  user: user4,
  booking: booking4
)
Review.create!(
  rating: 5,
  comment: "That trip was a wonderful experience!",
  user: user5,
  booking: booking5
)
Review.create!(
  rating: 1,
  comment: "Boat got lost. Then almost sank. Had to use the lifeboats and get rescued. I wouldnt do it again!",
  user: user6,
  booking: booking6
)

puts 'done'

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
puts "Created #{user1}"
user2 = User.create(email: "email2@email.com", password: "123456")
puts "Created #{user2}"
user3 = User.create(email: "email3@email.com", password: "123456")
puts "Created #{user3}"
user4 = User.create(email: "email4@email.com", password: "123456")
puts "Created #{user4}"
user5 = User.create(email: "email5@email.com", password: "123456")
puts "Created #{user5}"
user6 = User.create(email: "email6@email.com", password: "123456")
puts "Created #{user6}"
user7 = User.create(email: "email7@email.com", password: "123456")
puts "Created #{user7}"
user8 = User.create(email: "email8@email.com", password: "123456")
puts "Created #{user8}"
user9 = User.create(email: "email9@email.com", password: "123456")
puts "Created #{user9}"
user10 = User.create(email: "email10@email.com", password: "123456")
puts "Created #{user10}"

puts 'Creating Boats...'

file = URI.open('https://tinyurl.com/23vsvy33')
file2 = URI.open('https://tinyurl.com/3rxatv8n')
file3 = URI.open('https://tinyurl.com/ycytfv8d')


boat1 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  address: Faker::Address.street_address,
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat1.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat1.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat1.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1593351415075-3bac9f45c877?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Ym9hdHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1605281317010-fe5ffe798166?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGJvYXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
file3 = URI.open('https://images.unsplash.com/photo-1504716325983-cb91edab7e7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGJvYXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
puts 'Created Boat'

boat2 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  address: Faker::Address.street_address,
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat2.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat2.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat2.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1558181174-37062deac7e0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8OXwxMTcxMTA1NHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1582647106236-c3f16cb392db?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTB8MTE3MTEwNTR8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60')
file3 = URI.open('https://tinyurl.com/ycytfv8d')
puts 'Created Boat'

boat3 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  address: Faker::Address.street_address,
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat3.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat3.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat3.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1573757580620-e71069e58626?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTR8MTE3MTEwNTR8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1553835568-2e023c66ab2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8NXwxMTcxMTA1NHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')
file3 = URI.open('https://images.unsplash.com/photo-1586261747842-d06f4c41a490?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTZ8MTE3MTEwNTR8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60')
puts 'Created Boat'

boat4 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  address: Faker::Address.street_address,
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat4.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat4.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat4.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1563296291-14f26f10c20f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGJvYXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1520670255513-79161a36e39c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGJvYXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
file3 = URI.open('https://images.unsplash.com/photo-1499403474843-04e72c14df8e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fGJvYXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
puts 'Created Boat'

boat5 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  address: Faker::Address.street_address,
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat5.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat5.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat5.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1500627964684-141351970a7f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fGJvYXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1474927280041-5bef478c74e3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fGJvYXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
file3 = URI.open('https://images.unsplash.com/photo-1599134432254-e8cbfb74f1ab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fGJvYXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
puts 'Created Boat'

boat6 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  address: Faker::Address.street_address,
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat6.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat6.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat6.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1569263979104-865ab7cd8d13?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzB8fGJvYXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1567899378494-47b22a2ae96a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzZ8fGJvYXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
file3 = URI.open('https://images.unsplash.com/photo-1523496922380-91d5afba98a3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzF8fGJvYXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
puts 'Created Boat'

boat7 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  address: Faker::Address.street_address,
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat7.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat7.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat7.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1498528738175-10068e55f9a7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDR8fGJvYXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1585000962552-70f0a67223d9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDV8fGJvYXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
file3 = URI.open('https://images.unsplash.com/photo-1518528057367-d8618b763ca0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Njd8fGJvYXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
puts 'Created Boat'

boat8 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  address: Faker::Address.street_address,
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat8.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat8.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat8.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1600177897995-e67c73ed44e9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Njl8fGJvYXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1545566239-0b2fb5c50bc6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzN8fGJvYXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
file3 = URI.open('https://images.unsplash.com/photo-1562281302-809108fd533c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8eWFjaHR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
puts 'Created Boat'

boat9 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  address: Faker::Address.street_address,
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat9.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat9.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat9.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1567197399185-baf2309074fb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHlhY2h0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1633276209266-2fbb78253b76?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHlhY2h0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
file3 = URI.open('https://images.unsplash.com/photo-1598448251941-ae4dd47dba33?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aW5zaWRlJTIweWFjaHR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
puts 'Created Boat'

boat10 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  address: Faker::Address.street_address,
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat10.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat10.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat10.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1622219969983-45589eae5637?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fHlhY2h0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1571044773847-179b44cef7d5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGluc2lkZSUyMGJvYXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
file3 = URI.open('https://images.unsplash.com/photo-1584772126711-017fae29eadd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fHlhY2h0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
puts 'Created Boat'

boat11 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  address: Faker::Address.street_address,
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat11.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat11.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat11.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1626698393005-68c2937dd401?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzN8fHlhY2h0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1614350391736-ed8619d63c06?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDB8fHlhY2h0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
file3 = URI.open('https://images.unsplash.com/photo-1597278341748-f859d5f7d8e3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDF8fHlhY2h0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
puts 'Created Boat'

boat12 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  address: Faker::Address.street_address,
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat12.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat12.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat12.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1603377817563-5ccd33e57d05?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDl8fHlhY2h0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1599582297450-33ad41d26df8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTV8fHlhY2h0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
file3 = URI.open('https://images.unsplash.com/photo-1524722296347-8f15fbd74c63?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDR8fHlhY2h0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
puts 'Created Boat'

boat13 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  address: Faker::Address.street_address,
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat13.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat13.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat13.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1569263918239-56a390b8360e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjF8fHlhY2h0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1597430203235-a8d35b24b37d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzF8fHlhY2h0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
file3 = URI.open('https://images.unsplash.com/photo-1502986591842-471865a47d0e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzJ8fHlhY2h0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
puts 'Created Boat'

boat14 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  address: Faker::Address.street_address,
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat14.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat14.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat14.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1550071765-dc4ed6fbab22?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODF8fHlhY2h0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1590218087440-df21ca448c26?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2F0YW1hcmFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
file3 = URI.open('https://images.unsplash.com/photo-1514189370005-985e0b6abfae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Y2F0YW1hcmFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
puts 'Created Boat'

boat15 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  address: Faker::Address.street_address,
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat15.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat15.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat15.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1630516477416-d0de250ff769?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Y2F0YW1hcmFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1599580792927-de3b03c5dc20?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGNhdGFtYXJhbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
file3 = URI.open('https://images.unsplash.com/photo-1554935411-3f0f4a4b1323?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGNhdGFtYXJhbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
puts 'Created Boat'

boat16 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  address: Faker::Address.street_address,
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat16.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat16.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat16.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1634242210756-6759f2d2ff03?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDh8fG1lZ2ElMjB5YWNodHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1581704976845-f0a4a4bc6ede?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fGJvYXQlMjBwb3J0aG9sZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
file3 = URI.open('https://images.unsplash.com/photo-1463567517034-628c51048aa2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTM2fHxib2F0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
puts 'Created Boat'

boat17 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  address: Faker::Address.street_address,
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat17.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat17.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat17.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1508094902356-db488e227d75?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGlyYXRlJTIwc2hpcHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1625509976131-86d1ba268e09?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cGlyYXRlJTIwc2hpcHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
file3 = URI.open('https://images.unsplash.com/photo-1564845654222-d437f029c5c4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cGlyYXRlJTIwc2hpcHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
puts 'Created Boat'

boat18 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  address: Faker::Address.street_address,
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat18.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat18.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat18.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1625509976653-52f3deb5f552?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8cGlyYXRlJTIwc2hpcHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1605999358548-c8593e96cb83?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cGlyYXRlJTIwc2hpcHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
file3 = URI.open('https://images.unsplash.com/photo-1547013571-585f53927cd4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHBpcmF0ZSUyMHNoaXB8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
puts 'Created Boat'

boat19 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  address: Faker::Address.street_address,
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat19.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat19.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat19.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1521139869420-edaae1bc7b9a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHBpcmF0ZSUyMHNoaXB8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1581030063954-8b9c854df9d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fHBpcmF0ZSUyMHNoaXB8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
file3 = URI.open('https://images.unsplash.com/photo-1511192951894-5d7de7f594b3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fHBpcmF0ZSUyMHNoaXB8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
puts 'Created Boat'

boat20 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  address: Faker::Address.street_address,
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat20.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat20.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat20.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1592080464412-acce590eead0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZGVzdHJveWVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
file2 = URI.open('https://images.unsplash.com/photo-1581972061247-6fc5fe28e9a3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDN8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
file3 = URI.open('https://images.unsplash.com/photo-1588608840023-20f03bbe36fd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDZ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
puts 'Created Boat'

boat21 = Boat.create!(
  name: Faker::Name.name,
  docked: Faker::Boolean.boolean,
  address: Faker::Address.street_address,
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  boat_type: ["Bracera", "Banana-Boat", "Barge", "Dinghy", "Pedalo", "Punt", "Yacht", "Ship", "Catamaran", "Hovercraft"].sample,
  price: rand(50..999),
  guests: rand(1..100),
)
boat21.photos.attach(io: file, filename: 'boat1.jpeg', content_type: 'image/jpg')
boat21.photos.attach(io: file2, filename: 'boat2.jpeg', content_type: 'image/jpg')
boat21.photos.attach(io: file3, filename: 'boat3.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1589017656864-1a531be0c526?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80')
file2 = URI.open('https://images.unsplash.com/photo-1637499851764-ff252cb3c0e7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDJ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
file3 = URI.open('https://images.unsplash.com/photo-1566442035931-44210b2607b4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
puts 'Created Boat'

puts 'Creating Bookings'

booking1 = Booking.create!(
  user: user1,
  boat: boat1,
  start_date: DateTime.strptime("08/06/2023 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("10/06/2023 17:00", "%d/%m/%Y %H:%M"),
  cost: rand(567..9999)
)
booking2 = Booking.create!(
  user: user2,
  boat: boat2,
  start_date: DateTime.strptime("08/07/2023 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("10/07/2023 17:00", "%d/%m/%Y %H:%M"),
  cost: rand(567..9999)
)
booking3 = Booking.create!(
  user: user3,
  boat: boat3,
  start_date: DateTime.strptime("08/08/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("10/08/2022 17:00", "%d/%m/%Y %H:%M"),
  cost: rand(567..9999)
)
booking4 = Booking.create!(
  user: user4,
  boat: boat4,
  start_date: DateTime.strptime("08/09/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("10/09/2022 17:00", "%d/%m/%Y %H:%M"),
  cost: rand(567..9999)
)
booking5 = Booking.create!(
  user: user5,
  boat: boat5,
  start_date: DateTime.strptime("08/10/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("10/10/2022 17:00", "%d/%m/%Y %H:%M"),
  cost: rand(567..9999)
)
booking6 = Booking.create!(
  user: user6,
  boat: boat6,
  start_date: DateTime.strptime("08/11/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("10/11/2022 17:00", "%d/%m/%Y %H:%M"),
  cost: rand(567..9999)
)
booking7 = Booking.create!(
  user: user7,
  boat: boat7,
  start_date: DateTime.strptime("08/12/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("10/12/2022 17:00", "%d/%m/%Y %H:%M"),
  cost: rand(567..9999)
)
booking8 = Booking.create!(
  user: user8,
  boat: boat8,
  start_date: DateTime.strptime("08/01/2023 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("10/01/2023 17:00", "%d/%m/%Y %H:%M"),
  cost: rand(567..9999)
)
booking9 = Booking.create!(
  user: user9,
  boat: boat9,
  start_date: DateTime.strptime("25/09/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("27/09/2022 17:00", "%d/%m/%Y %H:%M"),
  cost: rand(567..9999)
)
booking10 = Booking.create!(
  user: user10,
  boat: boat10,
  start_date: DateTime.strptime("27/06/2023 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("29/06/2023 17:00", "%d/%m/%Y %H:%M"),
  cost: rand(567..9999)
)
booking11 = Booking.create!(
  user: user1,
  boat: boat11,
  start_date: DateTime.strptime("30/06/2023 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("01/07/2023 17:00", "%d/%m/%Y %H:%M"),
  cost: rand(567..9999)
)
booking12 = Booking.create!(
  user: user2,
  boat: boat12,
  start_date: DateTime.strptime("02/07/2023 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("04/07/2023 17:00", "%d/%m/%Y %H:%M"),
  cost: rand(567..9999)
)
booking13 = Booking.create!(
  user: user3,
  boat: boat13,
  start_date: DateTime.strptime("14/06/2023 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("16/06/2023 17:00", "%d/%m/%Y %H:%M"),
  cost: rand(567..9999)
)
booking14 = Booking.create!(
  user: user4,
  boat: boat14,
  start_date: DateTime.strptime("14/10/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("16/10/2022 17:00", "%d/%m/%Y %H:%M"),
  cost: rand(567..9999)
)
booking15 = Booking.create!(
  user: user5,
  boat: boat15,
  start_date: DateTime.strptime("16/06/2023 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("18/06/2023 17:00", "%d/%m/%Y %H:%M"),
  cost: rand(567..9999)
)
booking16 = Booking.create!(
  user: user6,
  boat: boat16,
  start_date: DateTime.strptime("19/06/2023 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("21/06/2023 17:00", "%d/%m/%Y %H:%M"),
  cost: rand(567..9999)
)
booking17 = Booking.create!(
  user: user7,
  boat: boat17,
  start_date: DateTime.strptime("10/12/2023 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("13/12/2023 17:00", "%d/%m/%Y %H:%M"),
  cost: rand(567..9999)
)
booking18 = Booking.create!(
  user: user8,
  boat: boat18,
  start_date: DateTime.strptime("20/07/2023 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("24/07/2023 17:00", "%d/%m/%Y %H:%M"),
  cost: rand(567..9999)
)
booking19 = Booking.create!(
  user: user9,
  boat: boat19,
  start_date: DateTime.strptime("26/07/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("29/07/2022 17:00", "%d/%m/%Y %H:%M"),
  cost: rand(567..9999)
)
booking20 = Booking.create!(
  user: user10,
  boat: boat20,
  start_date: DateTime.strptime("01/08/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("03/08/2022 17:00", "%d/%m/%Y %H:%M"),
  cost: rand(567..9999)
)
booking21 = Booking.create!(
  user: user1,
  boat: boat21,
  start_date: DateTime.strptime("04/08/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("08/08/2022 17:00", "%d/%m/%Y %H:%M"),
  cost: rand(567..9999)
)
booking22 = Booking.create!(
  user: user2,
  boat: boat1,
  start_date: DateTime.strptime("09/08/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("13/08/2022 17:00", "%d/%m/%Y %H:%M"),
  cost: rand(567..9999)
)
booking23 = Booking.create!(
  user: user3,
  boat: boat2,
  start_date: DateTime.strptime("14/08/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("20/08/2022 17:00", "%d/%m/%Y %H:%M"),
  cost: rand(567..9999)
)
booking24 = Booking.create!(
  user: user4,
  boat: boat3,
  start_date: DateTime.strptime("22/08/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("24/08/2022 17:00", "%d/%m/%Y %H:%M"),
  cost: rand(567..9999)
)
booking25 = Booking.create!(
  user: user5,
  boat: boat4,
  start_date: DateTime.strptime("22/09/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("24/09/2022 17:00", "%d/%m/%Y %H:%M"),
  cost: rand(567..9999)
)
booking26 = Booking.create!(
  user: user6,
  boat: boat5,
  start_date: DateTime.strptime("22/06/2023 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("24/06/2023 17:00", "%d/%m/%Y %H:%M"),
  cost: rand(567..9999)
)
booking27 = Booking.create!(
  user: user7,
  boat: boat6,
  start_date: DateTime.strptime("22/02/2023 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("24/02/2023 17:00", "%d/%m/%Y %H:%M"),
  cost: rand(567..9999)
)
booking28 = Booking.create!(
  user: user8,
  boat: boat7,
  start_date: DateTime.strptime("20/11/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("24/11/2022 17:00", "%d/%m/%Y %H:%M"),
  cost: rand(567..9999)
)
booking29 = Booking.create!(
  user: user9,
  boat: boat8,
  start_date: DateTime.strptime("17/11/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("19/11/2022 17:00", "%d/%m/%Y %H:%M"),
  cost: rand(567..9999)
)
booking30 = Booking.create!(
  user: user10,
  boat: boat9,
  start_date: DateTime.strptime("17/10/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("19/10/2022 17:00", "%d/%m/%Y %H:%M"),
  cost: rand(567..9999)
)
booking31 = Booking.create!(
  user: user1,
  boat: boat10,
  start_date: DateTime.strptime("13/10/2022 11:00", "%d/%m/%Y %H:%M"),
  end_date: DateTime.strptime("15/10/2022 17:00", "%d/%m/%Y %H:%M"),
  cost: rand(567..9999)
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

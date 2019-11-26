# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying users & houses"

User.destroy_all
House.destroy_all

puts "Creating Users"

#User Gorris

user = User.new
user.email = 'gorrisvastgoed@gmail.com'
user.password = 'gorrisDeGekste123'
user.password_confirmation = 'gorrisDeGekste123'
user.save!

#User Wijns

user = User.new
user.email = 'wijnsvastgoed@gmail.com'
user.password = 'wijnsDeGekste123'
user.password_confirmation = 'wijnsDeGekste123'
user.save!

puts "Creating Houses"

#House 1

house = House.new(
  address: 'Mechelbaan 153, 2220 Heist-Op-Den-Berg',
  bedrooms: 4,
  bathrooms: 2,
  surface_in: 198,
  surface_out: 900,
  url: 'http://www.gorrisvastgoed.be/pand_detail.aspx?pandid=1937790&nav=1',
  user: User.where(email: 'gorrisvastgoed@gmail.com').first,
  remote_photo_url: 'https://res.cloudinary.com/ddngbvo3j/image/upload/v1574786070/noiseHouse/house_1.jpg'
)
house.save!

#House 2

house = House.new(
  address: 'Dorpsstraat 82 BUS 4, 2221 Booischot',
  bedrooms: 1,
  bathrooms: 1,
  surface_in: 48,
  surface_out: 48,
  url: 'http://www.gorrisvastgoed.be/pand_detail.aspx?pandid=1907287&nav=1',
  user: User.where(email: 'gorrisvastgoed@gmail.com').first,
  remote_photo_url: 'https://res.cloudinary.com/ddngbvo3j/image/upload/v1574786070/noiseHouse/house_1.jpg'
)
house.save!

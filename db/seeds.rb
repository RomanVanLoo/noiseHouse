# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying all users & houses"

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
  remote_photo_url: 'https://res.cloudinary.com/ddngbvo3j/image/upload/v1574786070/noiseHouse/house_2.jpg'
)
house.save!

#House 3

house = House.new(
  address: 'Kleine Steenweg 28, 2221 Booischot',
  bedrooms: 2,
  bathrooms: 1,
  surface_in: 135,
  surface_out: 9999,
  url: 'http://www.gorrisvastgoed.be/pand_detail.aspx?pandid=1883907&nav=1',
  user: User.where(email: 'gorrisvastgoed@gmail.com').first,
  remote_photo_url: 'https://res.cloudinary.com/ddngbvo3j/image/upload/v1574786070/noiseHouse/house_3.jpg'
)
house.save!

#House 4

house = House.new(
  address: 'Witte Bergenstraat 24, 3200 Aarschot',
  bedrooms: 2,
  bathrooms: 1,
  surface_in: 143,
  surface_out: 389,
  url: 'http://www.gorrisvastgoed.be/pand_detail.aspx?pandid=1342593&nav=1',
  user: User.where(email: 'gorrisvastgoed@gmail.com').first,
  remote_photo_url: 'https://res.cloudinary.com/ddngbvo3j/image/upload/v1574786070/noiseHouse/house_4.jpg'
)
house.save!

#House 5

house = House.new(
  address: 'Kattestraat 15, 2580 Beerzel',
  bedrooms: 2,
  bathrooms: 1,
  surface_in: 150,
  surface_out: 793,
  url: 'https://wijns.be/nl/te-koop/woning/beerzel-2580/13820',
  user: User.where(email: 'wijnsvastgoed@gmail.com').first,
  remote_photo_url: 'https://res.cloudinary.com/ddngbvo3j/image/upload/v1574786070/noiseHouse/house_5.jpg'
)
house.save!

#House 6

house = House.new(
  address: 'Mechelbaan 53, 2580 Beerzel',
  bedrooms: 1,
  bathrooms: 1,
  surface_in: 9999,
  surface_out: 9999,
  url: 'https://wijns.be/nl/te-koop/woning/beerzel-2580/14195',
  user: User.where(email: 'wijnsvastgoed@gmail.com').first,
  remote_photo_url: 'https://res.cloudinary.com/ddngbvo3j/image/upload/v1574786070/noiseHouse/house_6.jpg'
)
house.save!

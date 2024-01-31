# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Booking.destroy_all
Dress.destroy_all
User.destroy_all


user_1 = User.create!(
  name: 'Rosy',
  email: 'rosy@email.com',
  password: '123456'
)

user_2 = User.create!(
  name: 'Lilly',
  email: 'lilly@email.com',
  password: '123456'
)

# Dress 1

dress_1 = Dress.create!(
  title: 'Summer Breeze Maxi Dress',
  description: 'A flowy maxi dress perfect for a summer day.',
  size: 'm',
  user: user_1,
  color: 'red',
  category: 'maxi',
  price_per_day: 25.00
)
# Dress 2
dress_2 = Dress.create!(
  title: 'Classic Black Cocktail Dress',
  description: 'A timeless black cocktail dress for any formal occasion.',
  size: 's',
  user: user_2,
  color: 'black',
  category: 'cocktail',
  price_per_day: 30.00
)
# Dress 3
dress_3 = Dress.create!(
  title: 'Floral Sundress',
  description: 'A vibrant floral sundress for a day out in the sun.',
  size: 'l',
  user: user_1,
  color: 'pink',
  category: 'sundress',
  price_per_day: 20.00
)
# Dress 4
dress_4 = Dress.create!(
  title: 'Elegant Evening Gown',
  description: 'An elegant evening gown for special occasions.',
  size: 'm',
  user: user_2,
  color: 'black',
  category: 'evening',
  price_per_day: 40.00
)
# Dress 5
dress_5 = Dress.create!(
  title: 'Chic Summer Party Dress',
  description: 'A chic and stylish party dress perfect for summer celebrations.',
  size: 'm',
  user: user_1,
  color: 'yellow',
  category: 'party',
  price_per_day: 35.00
)

# Bookings
booking_1 = Booking.create!(
  user: user_1,
  dress: dress_2,
  start_date: Date.today + 1,
  end_date: Date.today + 3,
  status: 0
)

Booking_2 = Booking.create!(
  user: user_2,
  dress: dress_1,
  start_date: Date.today + 5,
  end_date: Date.today + 6,
  status: 0
)

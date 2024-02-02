require "open-uri"
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

# 3 Users

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

user_3 = User.create!(
  name: 'Daisy',
  email: 'daisy@email.com',
  password: '123456'
)

# 12 Dresses (dress 1-4 by user 1, dress 5-8 by user 2, dress 9-12 by user 3)

file_1 = URI.open("https://images.unsplash.com/flagged/photo-1576572093163-83b5ad089423?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")

dress_1 = Dress.new(
  title: 'Summer Maxi Dress',
  description: 'A flowy maxi dress perfect for a summer day.',
  size: 'm',
  user: user_1,
  color: 'yellow',
  category: 'maxi',
  price_per_day: 25.00
)

dress_1.photo.attach(io: file_1, filename: "dress_1.png", content_type: "image/png")
dress_1.save

# Dress 2

file_2 = URI.open("https://images.unsplash.com/photo-1533659828870-95ee305cee3e?q=80&w=2187&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")

dress_2 = Dress.new(
  title: 'Grey Flowy Dress',
  description: 'A timeless black cocktail dress for any formal occasion.',
  size: 's',
  user: user_1,
  color: 'black',
  category: 'cocktail',
  price_per_day: 30.00
)

dress_2.photo.attach(io: file_2, filename: "dress_2.png", content_type: "image/png")
dress_2.save

# Dress 3

file_3 = URI.open("https://images.unsplash.com/photo-1605763240000-7e93b172d754?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")

dress_3 = Dress.new(
  title: 'Floral Sundress',
  description: 'A vibrant floral sundress for a day out in the sun.',
  size: 'l',
  user: user_1,
  color: 'orange',
  category: 'sundress',
  price_per_day: 20.00
)

dress_3.photo.attach(io: file_3, filename: "dress_3.png", content_type: "image/png")
dress_3.save

# Dress 4

file_4 = URI.open("https://images.unsplash.com/photo-1588824051376-0063738d61e0?q=80&w=2062&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")

dress_4 = Dress.new(
  title: 'Elegant Gown',
  description: 'An elegant evening gown for special occasions.',
  size: 'm',
  user: user_1,
  color: 'red',
  category: 'evening',
  price_per_day: 40.00
)

dress_4.photo.attach(io: file_4, filename: "dress_4.png", content_type: "image/png")
dress_4.save

# Dress 5

file_5 = URI.open("https://images.unsplash.com/photo-1613966570650-add3cf83aa83?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")

dress_5 = Dress.new(
  title: 'Summer Party Dress',
  description: 'A chic and stylish party dress perfect for summer celebrations.',
  size: 'm',
  user: user_2,
  color: 'white',
  category: 'party',
  price_per_day: 35.00
)
dress_5.photo.attach(io: file_5, filename: "dress_5.png", content_type: "image/png")
dress_5.save

# Dress 6
file_6 = URI.open("https://images.unsplash.com/flagged/photo-1585052201332-b8c0ce30972f?q=80&w=2235&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")

dress_6 = Dress.new(
  title: 'Cute Dress',
  description: 'A cute dress for any occasion.',
  size: 'xl',
  user: user_2,
  color: 'green',
  category: 'casual',
  price_per_day: 28.00
)

dress_6.photo.attach(io: file_6, filename: "dress_6.png", content_type: "image/png")
dress_6.save

# Dress 7
file_7 = URI.open("https://images.unsplash.com/photo-1562137369-1a1a0bc66744?q=80&w=2187&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")

dress_7 = Dress.new(
  title: 'Orange Maxi',
  description: 'A stylish orange maxi dress.',
  size: 's',
  user: user_2,
  color: 'orange',
  category: 'maxi',
  price_per_day: 32.00
)

dress_7.photo.attach(io: file_7, filename: "dress_7.png", content_type: "image/png")
dress_7.save

# Dress 8
file_8 = URI.open("https://images.unsplash.com/photo-1582533575066-75bd83ac91de?q=80&w=2160&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")

dress_8 = Dress.new(
  title: 'Glitter Cocktail',
  description: 'A bold glitter cocktail dress.',
  size: 'l',
  user: user_2,
  color: 'silver',
  category: 'cocktail',
  price_per_day: 38.00
)

dress_8.photo.attach(io: file_8, filename: "dress_8.png", content_type: "image/png")
dress_8.save

# Dress 9
file_9 = URI.open("https://images.unsplash.com/photo-1542295669297-4d352b042bca?q=80&w=2187&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")

dress_9 = Dress.new(
  title: 'Floral Summer',
  description: 'A floral summer dress.',
  size: 'm',
  user: user_3,
  color: 'red',
  category: 'summer',
  price_per_day: 26.00
)

dress_9.photo.attach(io: file_9, filename: "dress_9.png", content_type: "image/png")
dress_9.save

# Dress 10
file_10 = URI.open("https://images.unsplash.com/photo-1623580674393-edf6eb7090f8?q=80&w=2187&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")

dress_10 = Dress.new(
  title: 'Formal Elegance',
  description: 'An elegant formal dress.',
  size: 'l',
  user: user_3,
  color: 'black',
  category: 'formal',
  price_per_day: 45.00
)

dress_10.photo.attach(io: file_10, filename: "dress_10.png", content_type: "image/png")
dress_10.save

# Dress 11
file_11 = URI.open("https://images.unsplash.com/photo-1515372039744-b8f02a3ae446?q=80&w=2188&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")

dress_11 = Dress.new(
  title: 'Sunny Sundress',
  description: 'A sunny and vibrant sundress.',
  size: 'xl',
  user: user_3,
  color: 'white',
  category: 'sundress',
  price_per_day: 22.00
)

dress_11.photo.attach(io: file_11, filename: "dress_11.png", content_type: "image/png")
dress_11.save

# Dress 12
file_12 = URI.open("https://images.unsplash.com/photo-1539008835657-9e8e9680c956?q=80&w=2187&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")

dress_12 = Dress.new(
  title: 'Summer Sparkle',
  description: 'A sparkling summer dress.',
  size: 's',
  user: user_3,
  color: 'blue',
  category: 'summer',
  price_per_day: 40.00
)

dress_12.photo.attach(io: file_12, filename: "dress_12.png", content_type: "image/png")
dress_12.save

# Bookings done by user 1 (4 in total)
booking_1 = Booking.create!(
  user: user_1,
  dress: dress_5,
  start_date: Date.today + 1,
  end_date: Date.today + 3,
  status: 0
)

booking_2 = Booking.create!(
  user: user_1,
  dress: dress_6,
  start_date: Date.today + 7,
  end_date: Date.today + 8,
  status: 0
)

booking_3 = Booking.create!(
  user: user_1,
  dress: dress_9,
  start_date: Date.today + 11,
  end_date: Date.today + 13,
  status: 0
)

booking_4 = Booking.create!(
  user: user_1,
  dress: dress_10,
  start_date: Date.today + 20,
  end_date: Date.today + 21,
  status: 0
)

# Bookings for user 1
booking_5 = Booking.create!(
  user: user_2,
  dress: dress_1,
  start_date: Date.today + 5,
  end_date: Date.today + 6,
  status: 0
)

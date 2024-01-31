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
user_1 = User.create(
  name: 'Rosy',
  email: 'rosy@email.com',
  password: '123456'
)

user_2 = User.create(
  name: 'Lilly',
  email: 'lilly@email.com',
  password: '123456'
)

# Dress 1

file_1 = URI.open("https://images.unsplash.com/flagged/photo-1585052201332-b8c0ce30972f?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")

dress_1 = Dress.new(
  title: 'Summer Breeze Maxi Dress',
  description: 'A flowy maxi dress perfect for a summer day.',
  size: 'm',
  user: user_1,
  color: 'red',
  category: 'maxi',
  price_per_day: 25.00
)

dress_1.photo.attach(io: file_1, filename: "dress_1.png", content_type: "image/png")
dress_1.save

# Dress 2

file_2 = URI.open("https://images.unsplash.com/photo-1599662875272-64de8289f6d8?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")

dress_2 = Dress.new(
  title: 'Classic Black Cocktail Dress',
  description: 'A timeless black cocktail dress for any formal occasion.',
  size: 's',
  user: user_2,
  color: 'black',
  category: 'cocktail',
  price_per_day: 30.00
)

dress_2.photo.attach(io: file_2, filename: "dress_2.png", content_type: "image/png")
dress_2.save

# Dress 3

file_3 = URI.open("https://images.unsplash.com/photo-1517970640957-23d07d5ed08c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZmxvcmFsJTIwZHJlc3N8ZW58MHx8MHx8fDA%3D")

dress_3 = Dress.new(
  title: 'Floral Sundress',
  description: 'A vibrant floral sundress for a day out in the sun.',
  size: 'l',
  user: user_1,
  color: 'pink',
  category: 'sundress',
  price_per_day: 20.00
)

dress_3.photo.attach(io: file_3, filename: "dress_3.png", content_type: "image/png")
dress_3.save

# Dress 4

file_4 = URI.open("https://images.unsplash.com/photo-1612336307429-8a898d10e223?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")

dress_4 = Dress.new(
  title: 'Elegant Evening Gown',
  description: 'An elegant evening gown for special occasions.',
  size: 'm',
  user: user_2,
  color: 'black',
  category: 'evening',
  price_per_day: 40.00
)

dress_4.photo.attach(io: file_4, filename: "dress_4.png", content_type: "image/png")
dress_4.save

# Dress 5

file_5 = URI.open("https://images.unsplash.com/photo-1613966570650-add3cf83aa83?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")

dress_5 = Dress.new(
  title: 'Chic Summer Party Dress',
  description: 'A chic and stylish party dress perfect for summer celebrations.',
  size: 'm',
  user: user_1,
  color: 'yellow',
  category: 'party',
  price_per_day: 35.00
)

dress_5.photo.attach(io: file_5, filename: "dress_5.png", content_type: "image/png")
dress_5.save

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

 
  User.destroy_all
  category = ["Ski", "Snowboard", "Luge", "Racket", "Mono-ski"]
  size = ["Small", "Medium", "Large"]
  review = ["Great", "Bad", "Very bad", "The best!"]
  description = ["Very good material", "It's decent", "Material is in great conditions"]

  
  # 10.times do
  #   User.create!(email: Faker::Internet.email, password: "123456")
  #   Material.create!(category: category.sample, size: size.sample, description: description.sample, localisation: Faker::Address.city, price: rand(0...50), user_id: User.first.id)
  #   Booking.create!(start_date: "2020-12-12", end_date: "2020-12-16", user_id: User.last.id, material_id: Material.last.id)
  #   Review.create!(content: review.sample, rate: rand(0..5), booking_id: Booking.last.id)
  # end
  puts "Created 10 users/materials/bookings/Reviews"

  
  
  frantz = User.create!({email: "frantz@gmail.com", password:'123456'})
  yassine = User.create!({email: "yassine@gmail.com", password:'123456'})
  nicolas = User.create!({email: "nicolas@gmail.com", password:'123456'})
  ghislain = User.create!({email: "ghislain@gmail.com", password:'123456'})
  puts "Created 4 users"
  Material.create!(category: category.sample, size: size.sample, description: description.sample, localisation: Faker::Address.city, price: rand(0...50), user_id: User.first.id, photo: "https://images.cdn.snowleader.com/media/catalog/product/cache/1/image/125x400/0dc2d03fe217f8c83829496872af24a0/n/a/navis_freebird_2020-configurable-blackcrows-blac00425_2.jpg")
  puts "------------------------------------------------------"
  
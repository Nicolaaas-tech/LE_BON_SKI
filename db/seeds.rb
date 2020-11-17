# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

  Review.destroy_all
  Booking.destroy_all
  Material.destroy_all
  User.destroy_all

  5.times do 
    User.create!(email: Faker::Internet.email, password: "12343434")
    Material.create!(category: "ski", size: "small", description: "Very nice", localisation: "Valtho",user_id: User.first.id)
    Booking.create!(start_date: "2020-12-12", end_date: "2020-12-16", user_id: User.first.id, material_id: Material.last.id)
    Review.create!(content: "Bad times", rate: 5, booking_id: Booking.last.id)
  end

# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning the db...'

Restaurant.destroy_all
Review.destroy_all

puts 'db is clean'

puts 'creating restaurants...'

50.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: %w[chinese italian japanese french belgian].sample
  )
  puts "#{restaurant.id}-#{restaurant.name} was created"
end

500.times do
  review = Review.create(
  rating: rand(0..5),  
  content: Faker::Restaurant.review 

  )
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all

10.times do |x|
  u = User.create!(first_name: Faker::Name.first_name, password: "ririri", last_name: Faker::Name.first_name, email: "jojo#{x}@yopmail.com")
  Event.create(start_date: "2021-01-01",duration: 30,title: "skateboarding",description: "Balade au bord de la mer",price: 20,location: "London")
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Handler.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65), description: Faker::Quotes::Shakespeare.hamlet_quote, city: Faker::Address.city, hour_rate: 100, thumbnail: "https://wwwimage-us.pplusstatic.com/thumbnails/photos/w1920-q80/marquee/11/77/27/6/hero_landscape_91e1b039-11ef-4d97-a01e-639b6ee4990a.jpg" )
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  100.times do |movie|
  Movie.create(
    name: "#{Faker::Movie.title}",
    year: rand(1900..2020),
    genre: ["action", "horreur", "comedie", "drame"].sample,
    synopsis: "#{Faker::Lorem.paragraph}",
    director: "#{Faker::Name.name}",
    allocine_rating: rand(0.0..5.0).round(1),
    my_rating: nil,
    already_seen: false
  )
end
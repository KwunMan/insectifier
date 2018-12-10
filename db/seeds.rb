# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Seeding database"
Collection.destroy_all
Insect.destroy_all

insects_array = %w[ladybug spider ant moth beetle]
rare_array = %w[Everywhere common uncommon rare Almost-mythical]
challenge_array = ["Beetle.png","Ant.png","Dragonfly.png","Butterfly.png","Locust.png"]

puts "creating insect"
5.times do
  insects_array.each do |insect|
    insect = Insect.new(name: insect, description: "Ladybug is a widespread family of small beetles.", family: "Coccinellidae", location: "Japan", dangerous: true)
    insect.rarity = rare_array.sample
    insect.save
  end
end

puts "creating collection"
5.times do
  collection = Collection.new
  collection.user = User.first
  collection.insect = Insect.all.sample
  collection.save
end

puts "creating challenge"
2.times do
  challenge = Challenge.create!(score: 10_000, poster: "Beetle.png", clear: false, insect: Insect.all.sample)
  challenge.save
  challenge = Challenge.create!(score: 100, poster: "Ant.png", clear: false, insect: Insect.all.sample)
  challenge.save
  challenge = Challenge.create!(score: 1_500, poster: "Butterfly.png", clear: false, insect: Insect.all.sample)
  challenge.save
  challenge = Challenge.create!(score: 900, poster: "Dragonfly.png", clear: false, insect: Insect.all.sample)
  challenge.save
  challenge = Challenge.create!(score: 7_000, poster: "Locust.png", clear: false, insect: Insect.all.sample)
  challenge.save
  challenge = Challenge.create!(score: 20_000, poster: "Tarantula.png", clear: false, insect: Insect.all.sample)
  challenge.save
end

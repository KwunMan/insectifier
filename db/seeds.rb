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
Challenge.destroy_all

# insects_array = %w[ladybug spider ant moth beetle]
# rare_array = %w[Everywhere common uncommon rare Almost-mythical]
# challenge_array = ["Beetle.png","Ant.png","Dragonfly.png","Butterfly.png","Locust.png"]

# puts "creating insect"
# 5.times do
#   insects_array.each do |insect|
#     insect = Insect.new(name: insect, description: "Ladybug is a widespread family of small beetles.", family: "Coccinellidae", location: "Japan", dangerous: true)
#     insect.rarity = rare_array.sample
#     insect.save
#   end
# end

# puts "creating collection"
# 5.times do
#   collection = Collection.new
#   collection.user = User.first
#   collection.insect = Insect.all.sample
#   collection.save
# end

puts "creating challenge"
  challenge = Challenge.create!(score: 10_000, poster: "Beetle.jpg", family: "Scarabaeidae")
  challenge.save
  challenge = Challenge.create!(score: 100, poster: "Ant.jpg", family: "Formicidae")
  challenge.save
  challenge = Challenge.create!(score: 1_500, poster: "Butterfly.jpg", family: "Papilionidae")
  challenge.save
  challenge = Challenge.create!(score: 900, poster: "Dragonfly.jpg", family: "Libellulidae")
  challenge.save
  challenge = Challenge.create!(score: 7_000, poster: "Locust.jpg", family: "Acrididae")
  challenge.save
  challenge = Challenge.create!(score: 20_000, poster: "Tarantula.jpg", family: "Theraphosidae")
  challenge.save
  challenge = Challenge.create!(score: 500, poster: "Fly.jpg", family: "Sarcophagidae")
  challenge.save
  challenge = Challenge.create!(score: 12_000, poster: "Firefly.jpg", family: "Coleoptera")
  challenge.save
  challenge = Challenge.create!(score: 5_000, poster: "Wasp.jpg", family: "Vespidae")
  challenge.save
  challenge = Challenge.create!(score: 700, poster: "Water-Strider.jpg", family: "Gerridae")
  challenge.save
  challenge = Challenge.create!(score: 1_300, poster: "Longhorn-Beetle.jpg", family: "Cerambycidae")
  challenge.save
  challenge = Challenge.create!(score: 2_000, poster: "Cerastipsocus.jpg", family: "Psocidae")
  challenge.save
  challenge = Challenge.create!(score: 800, poster: "Stink-Bug.jpg", family: "Pentatomidae")
  challenge.save
  challenge = Challenge.create!(score: 3_000, poster: "House-Cricket.jpg", family: "Gryllidae")
  challenge.save
  challenge = Challenge.create!(score: 30_000, poster: "Giant-Water-Bug.jpg", family: "Belostomatidae")
  challenge.save
  challenge = Challenge.create!(score: 150, poster: "Mosquito.jpg", family: "Culicidae")
  challenge.save

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Seeding database"
Collection.destroy_all
AchievementCollection.destroy_all
Insect.destroy_all
Badge.destroy_all
Challenge.destroy_all


# insects_array = %w[ladybug spider ant moth beetle]
# rare_array = %w[Everywhere common uncommon rare Almost-mythical]
# challenge_array = ["beetle.jpg","ant.jpg","dragonfly.jpg","butterfly.jpg","locust.jpg"]

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


challenge1 = Challenge.create!(score: 10_000, poster: "beetle.jpg", family: "Lucanidae")
challenge2 = Challenge.create!(score: 100, poster: "ant.jpg", family: "Formicidae")
challenge3 = Challenge.create!(score: 1_500, poster: "butterfly.jpg", family: "Papilionidae")
challenge4 = Challenge.create!(score: 900, poster: "dragonfly.jpg", family: "Libellulidae")
challenge5 = Challenge.create!(score: 7_000, poster: "locust.jpg", family: "Acrididae")
challenge6 = Challenge.create!(score: 20_000, poster: "tarantula.jpg", family: "Theraphosidae")
challenge7 = Challenge.create!(score: 500, poster: "fly.jpg", family: "Muscidae")
challenge8 = Challenge.create!(score: 12_000, poster: "firefly.jpg", family: "Coleoptera")
challenge9 = Challenge.create!(score: 5_000, poster: "wasp.jpg", family: "Vespidae")
challenge10 = Challenge.create!(score: 700, poster: "water-strider.jpg", family: "Gerridae")
challenge11 = Challenge.create!(score: 1_300, poster: "longhorn-beetle.jpg", family: "Cerambycidae")
challenge12 = Challenge.create!(score: 2_000, poster: "cerastipsocus.jpg", family: "Psocidae")
challenge13 = Challenge.create!(score: 800, poster: "stink-bug.jpg", family: "Pentatomidae")
challenge14 = Challenge.create!(score: 3_000, poster: "house-cricket.jpg", family: "Gryllidae")
challenge15 = Challenge.create!(score: 30_000, poster: "giant-water-bug.jpg", family: "Belostomatidae")
challenge16 = Challenge.create!(score: 150, poster: "mosquito.jpg", family: "Culicidae")

puts "Creating badges"
badge = Badge.create!(image: "insect_badges/beetle.jpg", challenge_id: challenge1.id)
badge = Badge.create!(image: "insect_badges/ant.jpg", challenge_id: challenge2.id)
badge = Badge.create!(image: "insect_badges/butterfly.jpg", challenge_id: challenge3.id)
badge = Badge.create!(image: "insect_badges/dragonfly.jpg", challenge_id: challenge4.id)
badge = Badge.create!(image: "insect_badges/locust.jpg", challenge_id: challenge5.id)
badge = Badge.create!(image: "insect_badges/tarantula.jpg", challenge_id: challenge6.id)
badge = Badge.create!(image: "insect_badges/fly.jpg", challenge_id: challenge7.id)
badge = Badge.create!(image: "insect_badges/firefly.jpg", challenge_id: challenge8.id)
badge = Badge.create!(image: "insect_badges/wasp.jpg", challenge_id: challenge9.id)
badge = Badge.create!(image: "insect_badges/water-strider.jpg", challenge_id: challenge10.id)
badge = Badge.create!(image: "insect_badges/longhorn-beetle.jpg", challenge_id: challenge11.id)
badge = Badge.create!(image: "insect_badges/cerastipsocus.jpg", challenge_id: challenge12.id)
badge = Badge.create!(image: "insect_badges/stink-bug.jpg", challenge_id: challenge13.id)
badge = Badge.create!(image: "insect_badges/house-cricket.jpg", challenge_id: challenge14.id)
badge = Badge.create!(image: "insect_badges/giant-water-bug.jpg", challenge_id: challenge15.id)
badge = Badge.create!(image: "insect_badges/mosquito.jpg", challenge_id: challenge16.id)

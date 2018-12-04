# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Seeding database"
User.destroy_all
Collection.destroy_all
Insect.destroy_all

insects_array = %w[ladybug spider]

puts "creating insect"
5.times do
  insects_array.each do |insect|
    insect = Insect.new(name: insect, description: "Ladybug is a widespread family of small beetles.", family: "Coccinellidae", rarity: "precious", location: "Japan", dangerous: true)
    insect.save
  end
end

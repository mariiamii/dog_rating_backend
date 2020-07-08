# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# "http://api.giphy.com/v1/gifs/search?q=ryan+gosling&api_key=YOUR_API_KEY&limit=5"

require_relative "giphy_api.rb"

breeds = [
    "Shiba",
    "Corgi",
    "Husky",
    "Golden Retriever",
    "Dachshund",
    "French Bulldog",
    "Poodle",
    "Australian Shepherd",
    "Beagle",
    "Pomeranian"
]

api = GiphyApi.new

puts "destroying breeds"
Breed.destroy_all
puts "destroying dogs"
Dog.destroy_all
puts "destroying dog ratings"
DogRating.destroy_all

puts "seeding breeds"
breeds.each do |breed| 
    Breed.create(name: breed)
end

puts "seeding dogs"

puts "seeding shibas"
api.shibas
puts "seeding corgis"
api.corgis
puts "seeding huskies"
api.huskies
puts "seeding golden retrievers"
api.goldens
puts "seeding dachshunds"
api.dachshunds
puts "seeding frenchies"
api.frenchies
puts "seeding poodles"
api.poodles
puts "seeding australians"
api.australians
puts "seeding beagles"
api.beagles
puts "seeding pomeranians"
api.pomeranians

puts "seeding dog ratings"
50.times do
    DogRating.create(dog_id: Dog.all.sample.id, rating: rand(1..5))
end

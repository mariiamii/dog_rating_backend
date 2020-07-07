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

puts "seeding breed"
breeds.each do |breed| 
    Breed.create(name: breed)
end

puts "seeding dog"
api.shibas
# Dog.create(breed_id: Breed.all.sample.id, image_url: "https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/26114717/Shiba-Inu-puppy-standing-outdoors.jpg")
puts "seeding dog rating"
DogRating.create(dog_id: Dog.all.sample.id, rating: rand(1..5))

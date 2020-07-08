require 'httparty'
require 'byebug'

class GiphyApi
    
    include HTTParty

    BASE_URL = "https://api.giphy.com/v1/gifs/search?"
    API_PARTIAL_URL = "api_key=#{ENV['GIPHY_API_KEY']}"

    def shibas
    request = HTTParty.get(BASE_URL+API_PARTIAL_URL+"&q=shiba&limit=10").to_json
    @request_hash = JSON.parse(request)
        @request_hash["data"].each do |result|
            Dog.create(image_url: result["url"], breed_id: Breed.find_by(name: "Shiba").id)
        end
    end

    def corgis
    request = HTTParty.get(BASE_URL+API_PARTIAL_URL+"&q=corgi&limit=10").to_json
    @request_hash = JSON.parse(request)
        @request_hash["data"].each do |result|
            Dog.create(image_url: result["url"], breed_id: Breed.find_by(name: "Corgi").id)
        end
    end

    def huskies
    request = HTTParty.get(BASE_URL+API_PARTIAL_URL+"&q=husky&limit=10").to_json
    @request_hash = JSON.parse(request)
        @request_hash["data"].each do |result|
            Dog.create(image_url: result["url"], breed_id: Breed.find_by(name: "Husky").id)
        end
    end

    def goldens
    request = HTTParty.get(BASE_URL+API_PARTIAL_URL+"&q=golden+retriever&limit=10").to_json
    @request_hash = JSON.parse(request)
        @request_hash["data"].each do |result|
            Dog.create(image_url: result["url"], breed_id: Breed.find_by(name: "Golden Retriever").id)
        end
    end

    def dachshunds
    request = HTTParty.get(BASE_URL+API_PARTIAL_URL+"&q=dachsund&limit=10").to_json
    @request_hash = JSON.parse(request)
        @request_hash["data"].each do |result|
            Dog.create(image_url: result["url"], breed_id: Breed.find_by(name: "Dachshund").id)
        end
    end

    def frenchies
    request = HTTParty.get(BASE_URL+API_PARTIAL_URL+"&q=french+bulldog&limit=10").to_json
    @request_hash = JSON.parse(request)
        @request_hash["data"].each do |result|
            Dog.create(image_url: result["url"], breed_id: Breed.find_by(name: "French Bulldog").id)
        end
    end

    def poodles
    request = HTTParty.get(BASE_URL+API_PARTIAL_URL+"&q=poodle&limit=10").to_json
    @request_hash = JSON.parse(request)
        @request_hash["data"].each do |result|
            Dog.create(image_url: result["url"], breed_id: Breed.find_by(name: "Poodle").id)
        end
    end

    def australians
    request = HTTParty.get(BASE_URL+API_PARTIAL_URL+"&q=australian+shepherd&limit=10").to_json
    @request_hash = JSON.parse(request)
        @request_hash["data"].each do |result|
            Dog.create(image_url: result["url"], breed_id: Breed.find_by(name: "Australian Shepherd").id)
        end
    end

    def beagles
    request = HTTParty.get(BASE_URL+API_PARTIAL_URL+"&q=beagle&limit=10").to_json
    @request_hash = JSON.parse(request)
        @request_hash["data"].each do |result|
            Dog.create(image_url: result["url"], breed_id: Breed.find_by(name: "Beagle").id)
        end
    end

    def pomeranians
    request = HTTParty.get(BASE_URL+API_PARTIAL_URL+"&q=pomeranian&limit=10").to_json
    @request_hash = JSON.parse(request)
        @request_hash["data"].each do |result|
            Dog.create(image_url: result["url"], breed_id: Breed.find_by(name: "Pomeranian").id)
        end
    end

    



end

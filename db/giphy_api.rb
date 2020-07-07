require 'httparty'
require 'byebug'

class GiphyApi
    
    include HTTParty
    format :json
    base_uri 'http://api.giphy.com/v1/gifs/'
    giphy_key = "G8OMV6Zlex6EhDFC63VRjcWr7GVONBiL"
    url = "http://api.giphy.com/v1/gifs/search?q=breed&api_key=#{giphy_key}&limit=5"

    # def dogs
    #     request_hash = self.class.get('URL').parsed_response
    #     request_hash["results"].each do |result|
    #         Dog.create(image_url: result["url"], breed_id: SOMETHING FINDBY BREED NAME.id)
    #     end
    # end

    def shibas
        request_hash = self.class.get('search?q=shiba&api_key=G8OMV6Zlex6EhDFC63VRjcWr7GVONBiL&limit=2').parsed_response
        byebug
        request_hash["result"].each do |result|
            Dog.create(image_url: result["url"], breed_id: Breed.all.sample.id)
        end
    end

end

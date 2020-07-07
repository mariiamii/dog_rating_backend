class BreedsController < ApplicationController
    def index
        @breeds = Breed.all 
        render json: @breeds
    end
end

class DogRatingsController < ApplicationController

    def index
        @dog_ratings = DogRating.all 
        render json: @dog_ratings
    end

    def create
        @dog_rating = DogRating.create(rating_params)
        render json: @dog_rating
    end

    private

    def rating_params
        params.permit(:rating, :dog_id)
    end
end

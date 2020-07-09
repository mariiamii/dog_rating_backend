class DogsController < ApplicationController
    def index
        @dogs = Dog.all 
        render json: @dogs 
    end

    def update
        @dog = Dog.find(params[:id])
        @dog.update(dog_params)
        render json: @dog
    end

    private

    def dog_params
        params.permit(:id, :image_url, :breed_id, :avg_rating)
    end
    
end
class DogSerializer < ActiveModel::Serializer
  attributes :id, :image_url, :breed_id, :avg_rating
  has_many :dog_ratings
  belongs_to :breed 
end

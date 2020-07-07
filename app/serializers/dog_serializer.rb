class DogSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :breed_id
  has_many :dog_ratings
  belongs_to :breed 
end

class Dog < ApplicationRecord
    belongs_to :breed
    has_many :dog_ratings
end

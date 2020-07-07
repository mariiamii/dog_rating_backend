class CreateDogRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :dog_ratings do |t|
      t.integer :dog_id
      t.integer :rating

      t.timestamps
    end
  end
end

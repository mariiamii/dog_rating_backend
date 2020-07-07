class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :image_url
      t.integer :breed_id

      t.timestamps
    end
  end
end

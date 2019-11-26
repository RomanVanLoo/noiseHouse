class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.string :address
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :surface_in
      t.integer :surface_out
      t.string :url
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

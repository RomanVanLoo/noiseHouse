class CreateMeasurements < ActiveRecord::Migration[5.2]
  def change
    create_table :measurements do |t|
      t.integer :level
      t.references :house, foreign_key: true

      t.timestamps
    end
  end
end

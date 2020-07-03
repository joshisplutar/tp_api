class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :slug
      t.string :gps

      t.timestamps
    end
  end
end

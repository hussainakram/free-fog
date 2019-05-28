class CreateWhitelistedLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :whitelisted_locations do |t|
      t.string :name
      t.decimal :longitude, :precision=>10, :scale=>6
      t.decimal :latitude, :precision=>10, :scale=>6

      t.timestamps
    end

    add_index :whitelisted_locations, [:longitude, :latitude]
  end
end

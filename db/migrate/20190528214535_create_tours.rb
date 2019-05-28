class CreateTours < ActiveRecord::Migration[5.2]
  def change
    create_table :tours do |t|
      t.string :name
      t.decimal :longitude, :precision=>10, :scale=>6
      t.decimal :latitude, :precision=>10, :scale=>6
      t.integer :user_id

      t.timestamps
    end

    add_index :tours, [:longitude, :latitude]
  end
end

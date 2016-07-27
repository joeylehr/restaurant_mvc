class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :location
      t.date :opening_date
      t.string :city
      t.string :state
      t.integer :restaurant_id
      t.timestamps null: false
    end
  end
end

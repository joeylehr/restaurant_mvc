class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :motto
      t.string :founder
      t.date   :date_founded
      t.timestamps null: false
    end
  end
end

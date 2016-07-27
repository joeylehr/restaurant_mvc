class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.date :date_of_birth
      t.string :hometown
      t.date :start_date
      t.integer :bonus
      t.boolean :current_employee
      t.integer :location_id
      t.timestamps null: false
    end
  end
end

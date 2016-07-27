class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :title
      t.integer :starting_salary
      t.string :next_possible_promotion
      t.timestamps null: false
    end
  end
end

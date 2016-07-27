class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :calories
      t.boolean :meat
      t.boolean :dairy
      t.boolean :poultry
      t.boolean :perishable
      t.timestamps null: false
    end
  end
end

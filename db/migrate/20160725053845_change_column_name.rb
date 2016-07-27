class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :food_items, :ingredients, :ingredients_description
  end
end

class ChangeFoodReferencesInFoodRecipes < ActiveRecord::Migration[7.0]
  def change
    rename_column :food_recipes, :foods_id, :food_id
  end
end

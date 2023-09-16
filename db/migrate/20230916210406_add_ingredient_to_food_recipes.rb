class AddIngredientToFoodRecipes < ActiveRecord::Migration[7.0]
  def change
    add_column :food_recipes, :ingredient, :string
  end
end

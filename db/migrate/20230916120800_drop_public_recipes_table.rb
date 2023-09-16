class DropPublicRecipesTable < ActiveRecord::Migration[7.0]
  def up
    drop_table :public_recipes
  end
end

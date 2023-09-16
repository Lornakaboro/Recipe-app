require 'rails_helper'

RSpec.describe FoodRecipe, type: :model do
  let(:user) { User.create(email: 'john@example.com', password: 'password') }

  let(:food) do
    Food.create(
      name: 'Example Food',
      measurement_unit: 'grams',
      unit_price: 10.50,
      user:
    )
  end

  let(:recipe) do
    Recipe.create(
      name: 'Example Recipe',
      description: 'This is a test recipe.',
      public: true,
      user:
    )
  end

  it 'is valid with valid attributes' do
    food_recipe = FoodRecipe.new(food:, recipe:)
    expect(food_recipe).to be_valid
  end

  it 'is not valid without a food' do
    food_recipe = FoodRecipe.new(recipe:)
    expect(food_recipe).to_not be_valid
  end

  it 'is not valid without a recipe' do
    food_recipe = FoodRecipe.new(food:)
    expect(food_recipe).to_not be_valid
  end

  it 'belongs to a food' do
    food_recipe = FoodRecipe.new(food:, recipe:)
    expect(food_recipe.food).to eq(food)
  end

  it 'belongs to a recipe' do
    food_recipe = FoodRecipe.new(food:, recipe:)
    expect(food_recipe.recipe).to eq(recipe)
  end
end

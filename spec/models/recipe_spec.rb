require 'rails_helper'

RSpec.describe Recipe, type: :model do
  let(:user) { User.create(email: 'john@example.com', password: 'password') }

  it 'is valid with valid attributes' do
    recipe = Recipe.new(name: 'Example Recipe', description: 'This is a test recipe.', public: true, user:)
    expect(recipe).to be_valid
  end

  it 'is not valid without a name' do
    recipe = Recipe.new(description: 'This is a test recipe.', public: true, user:)
    expect(recipe).to_not be_valid
  end

  it 'is not valid without a description' do
    recipe = Recipe.new(name: 'Example Recipe', public: true, user:)
    expect(recipe).to_not be_valid
  end

  it 'belongs to a user' do
    recipe = Recipe.new(name: 'Example Recipe', description: 'This is a test recipe.', public: true, user:)
    expect(recipe.user).to eq(user)
  end
end

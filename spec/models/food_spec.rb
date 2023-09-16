require 'rails_helper'

RSpec.describe Food, type: :model do
  let(:user) { User.create(email: 'john@example.com', password: 'password') }

  it 'is valid with valid attributes' do
    food = Food.new(name: 'Example Food', measurement_unit: 'grams', unit_price: 10.50, user:)
    expect(food).to be_valid
  end

  it 'is not valid without a name' do
    food = Food.new(measurement_unit: 'grams', unit_price: 10.50, user:)
    expect(food).to_not be_valid
  end
end

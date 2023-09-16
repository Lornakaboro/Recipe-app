require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with valid attributes' do
    user = User.new(
      email: 'test@example.com',
      password: 'password',
      password_confirmation: 'password'
    )
    expect(user).to be_valid
  end

  it 'is not valid without an email' do
    user = User.new(
      password: 'password',
      password_confirmation: 'password'
    )
    expect(user).to_not be_valid
  end

  it 'is not valid without a password' do
    user = User.new(
      email: 'test@example.com',
      password_confirmation: 'password'
    )
    expect(user).to_not be_valid
  end

  it 'is not valid with a mismatched password confirmation' do
    user = User.new(
      email: 'test@example.com',
      password: 'password',
      password_confirmation: 'wrongpassword'
    )
    expect(user).to_not be_valid
  end

  it 'destroys associated recipes and foods when destroyed' do
    user = User.create(
      email: 'test@example.com',
      password: 'password',
      password_confirmation: 'password'
    )

    Recipe.create(
      name: 'Example Recipe',
      description: 'This is a test recipe.',
      public: true,
      user:
    )

    Food.create(
      name: 'Example Food',
      measurement_unit: 'grams',
      unit_price: 10.50,
      user:
    )

    expect { user.destroy }.to change { Recipe.count }.by(-1).and change { Food.count }.by(-1)
  end
end

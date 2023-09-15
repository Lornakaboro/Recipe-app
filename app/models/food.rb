# app/models/food.rb
class Food < ApplicationRecord
    belongs_to :user
    has_many :food_recipes
    has_many :recipes, through: :food_recipes
  
    validates :name, presence: true
    validates :measurement_unit, presence: true
    validates :price, numericality: true # Use `numericality: true` to validate numericality
    validates :quantity, numericality: { only_integer: true }
  end
  

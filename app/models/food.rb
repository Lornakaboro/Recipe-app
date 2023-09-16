class Food < ApplicationRecord
  belongs_to :user
  has_many :food_recipes
  has_many :recipes, through: :food_recipes

  validates :name, presence: true
  validates :measurement_unit, presence: true
  validates :unit_price, numericality: true
end

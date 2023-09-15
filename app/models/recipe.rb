# frozen_string_literal: true

class Recipe < ApplicationRecord
  attr_accessor :public

  before_save :set_public

  belongs_to :user, foreign_key: :user_id
  has_many :food_recipes, dependent: :destroy

  # Validations
  validates :name, presence: true
  validates :description, presence: true
  validates :public, presence: true

  private

  def set_public
    self.public ||= false
  end
end

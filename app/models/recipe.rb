class Recipe < ActiveRecord::Base
  belongs_to :vegetable
  has_many :recipe_ingredients, dependent: :destroy
  has_many :ingredients, through: :recipe_ingredients
end

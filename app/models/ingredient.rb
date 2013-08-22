class Ingredient < ActiveRecord::Base
  	has_many :recipe_ingredients #Must remove after remove recipe
  	has_many :recipes, through: :recipe_ingredients #Must remove after remove recipe
  	has_many :prep_ingredients
  	has_many :preps, through: :prep_ingredients
  	has_many :grocery_lists
end

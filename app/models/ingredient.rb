class Ingredient < ActiveRecord::Base
  	has_many :prep_ingredients
  	has_many :preps, through: :prep_ingredients
  	has_many :grocery_lists
end

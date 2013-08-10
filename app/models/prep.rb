class Prep < ActiveRecord::Base
	has_many :protein_preps 
	has_many :proteins, through: :protein_preps
 	has_many :prep_ingredients, dependent: :destroy
  	has_many :ingredients, through: :prep_ingredients
end

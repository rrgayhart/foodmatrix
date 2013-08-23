class Prep < ActiveRecord::Base
	has_many :protein_preps 
	has_many :proteins, through: :protein_preps
	has_many :vegetable_preps
	has_many :vegetables, through: :vegetable_preps
	has_many :fats, through: :fat_preps
	has_many :fat_preps
	has_many :spices, through: :spice_preps
	has_many :snack_preps
	has_many :snacks, through: :snack_preps
 	has_many :prep_ingredients, dependent: :destroy
  	has_many :ingredients, through: :prep_ingredients
end

class Prep < ActiveRecord::Base
  belongs_to :protein
  has_many :prep_ingredients 
  has_many :ingredients, through: :prep_ingredients
end

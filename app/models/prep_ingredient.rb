class PrepIngredient < ActiveRecord::Base
	belongs_to :ingredient
	belongs_to :prep
	validates: prep_id, presence: true
	validates: ingredient_id, presence: true
end

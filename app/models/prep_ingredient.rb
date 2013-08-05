class PrepIngredient < ActiveRecord::Base
	belongs_to :ingredient
	belongs_to :prep
end

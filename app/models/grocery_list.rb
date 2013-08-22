class GroceryList < ActiveRecord::Base
	has_many :gls
	has_many :users, through: :gls
	has_many :ingredients
end

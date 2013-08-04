class MealsController < ApplicationController
	def index
	end
	
	def initialize
		@protein = Protein.order("random()").first
		@vegetable = Vegetable.order("random()").first
		@spice = Spice.order("random()").first
	end


end
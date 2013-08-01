class MealsController < ApplicationController
	def index
	end
	
	def initialize
		@protein = Protein.first
	end


end
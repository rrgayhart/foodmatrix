class MealsController < ApplicationController
	def index
	end
	
	def initialize
		@protein = Protein.all.sample
	end


end
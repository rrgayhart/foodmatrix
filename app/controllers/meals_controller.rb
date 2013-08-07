class MealsController < ApplicationController
	def index
	  @meal = Meal.new
	end
	
	private

end
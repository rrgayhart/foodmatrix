class Meal
	attr_accessor :protein, :marinade, :vegetable, :spice, :fat, :recipe, :prep

	def initialize
		@protein = Protein.order("random()").first
		@vegetable = Vegetable.order("random()").first
		@spice = Spice.order("random()").first
		@prep = @protein.preps.order("random()").first
		@recipe = @vegetable.recipes.order("random()").first
		@marinade = @spice.marinades.order("random()").first
	end
end
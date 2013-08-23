class Meal
	attr_accessor :protein, :vegetable, :spice, :fat, :prep

	def initialize
		@protein = Protein.order("random()").first
		@vegetable = Vegetable.order("random()").first
		@spice = Spice.order("random()").first
		@prep_protein = @protein.preps.order("random()").first
		@prep_vegetable = @vegetable.preps.order("random()").first
		@prep_spice = @spice.preps.order("random()").first
	end
end
class ProteinsController < ApplicationController
	def new
	end

	def create
		@protein = Protein.new(protein_params)

		@protein.save
		redirect_to @protein
	end

	private
		def protein_params
			params.require(:protein).permit(:title, :text)
		end
end

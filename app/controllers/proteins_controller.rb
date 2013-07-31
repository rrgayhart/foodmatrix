class ProteinsController < ApplicationController
	def new
	end

	def create
		@protein = Protein.new(params[:protein].permit(:title, :text))

		@protein.save
		redirect_to @protein
	end

	def show
		@protein = Protein.find(params[:id])
	end

	def index
		@proteins = Protein.all
	end

	private
		def protein_params
			params.require(:protein).permit(:title, :text)
		end
end

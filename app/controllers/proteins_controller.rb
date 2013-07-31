class ProteinsController < ApplicationController
	def new
		@protein = Protein.new
	end

	def create
		@protein = Protein.new(params[:protein].permit(:title, :text))

		if @protein.save
			redirect_to @protein
		else
			render 'new'
		end
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

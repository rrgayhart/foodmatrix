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

	def edit
		@protein = Protein.find(params[:id])
	end

	def update
		@protein = Protein.find(params[:id])

		if @protein.update(params[:protein].permit(:title, :text))
			redirect_to @protein
		else
			render 'edit'
		end
	end

	def destroy
		@protein = Protein.find(params[:id])
		@protein.destroy

		redirect_to proteins_path
	end
	
	private
		def protein_params
			params.require(:protein).permit(:title, :text)
		end
end

class PrepsController < ApplicationController
	def create
    	@protein = Protein.find(params[:protein_id])
    	@prep = @protein.preps.create(params[:prep].permit(:name, :body, :time))
    	redirect_to protein_path(@protein)
  	end

  	def destroy
    	@protein = Protein.find(params[:protein_id])
    	@prep = @protein.preps.find(params[:id])
    	@prep.destroy
    	redirect_to protein_path(@protein)
  	end

  	def index
  		@preps = Prep.all
  	end
end

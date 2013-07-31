class PrepsController < ApplicationController
	def create
    	@protein = Protein.find(params[:protein_id])
    	@prep = @protein.preps.create(params[:prep].permit(:name, :body))
    	redirect_to protein_path(@protein)
  	end
end

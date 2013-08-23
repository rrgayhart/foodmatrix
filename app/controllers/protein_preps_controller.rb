class ProteinPrepsController < ApplicationController
	before_action :signed_in_user
 	before_action :admin_user
	
	def create
    	@protein = Protein.find(params[:protein_id])
    	@prep = @protein.preps.create(params[:prep].permit(:name, :body, :time))
    	redirect_to edit_prep_path(@prep)
	end
end
class SpicePrepsController < ApplicationController
	before_action :signed_in_user
 	before_action :admin_user
	
	def create
    	@spice = Spice.find(params[:spice_id])
    	@prep = @spice.preps.create(params[:prep].permit(:name, :body, :time))
    	redirect_to spice_path(@spice)
	end
end
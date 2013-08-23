class FatPrepsController < ApplicationController
	before_action :signed_in_user
 	before_action :admin_user
	
	def create
    	@fat = Fat.find(params[:fat_id])
    	@prep = @fat.preps.create(params[:prep].permit(:name, :body, :time))
    	redirect_to edit_prep_path(@prep)
	end
end
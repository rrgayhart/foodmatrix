class SnackPrepsController < ApplicationController
	before_action :signed_in_user
 	before_action :admin_user
	
	def create
    	@snack = Snack.find(params[:snack_id])
    	@prep = @snack.preps.create(params[:prep].permit(:name, :body, :time))
    	redirect_to snack_path(@snack)
	end
end
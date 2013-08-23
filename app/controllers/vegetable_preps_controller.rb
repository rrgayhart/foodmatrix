class VegetablePrepsController < ApplicationController
	before_action :signed_in_user
 	before_action :admin_user
	
	def create
    	@vegetable = Vegetable.find(params[:vegetable_id])
    	@prep = @vegetable.preps.create(params[:prep].permit(:name, :body, :time))
    	redirect_to vegetable_path(@vegetable)
	end
end
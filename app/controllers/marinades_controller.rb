class MarinadesController < ApplicationController
	before_action :signed_in_user, only: [:create, :edit, :destroy]
	before_action :admin_user, only: [:create, :edit, :destroy]
  def create
    @spice = Spice.find(params[:spice_id])
    @marinade = @spice.marinades.create(params[:marinade].permit(:name, :body, :time))
    redirect_to spice_path(@spice)
  end

  	def index
  		@marinades = Marinade.all
  	end

  	def edit
  	end

  	def destroy
  	end
end
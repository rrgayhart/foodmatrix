class MarinadesController < ApplicationController
  def create
    @spice = Spice.find(params[:spice_id])
    @marinade = @spice.marinades.create(params[:marinade].permit(:name, :body, :time))
    redirect_to spice_path(@spice)
  end

  	def index
  		@marinades = Marinade.all
  	end
end
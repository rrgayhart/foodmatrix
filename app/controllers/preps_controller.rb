class PrepsController < ApplicationController
  before_action :signed_in_user, only: [:create, :edit, :destroy]
  before_action :admin_user, only: [:create, :edit, :destroy]

  	def destroy
    	@prep = Prep.find(params[:id])
    	@prep.destroy
    	redirect_to root_path
  	end

  	def index
  		@preps = Prep.all
  	end

    def edit
      @prep = Prep.find(params[:id])
    end

    def update
      @prep = Prep.find(params[:id])
      if @prep.update(params[:prep])
        redirect_to @prep
      else
        render 'edit'
      end
    end
end

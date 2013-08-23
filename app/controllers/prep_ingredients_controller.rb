class PrepIngredientsController < ApplicationController
	before_action :signed_in_user, only: [:create, :edit, :destroy]
 	before_action :admin_user, only: [:create, :edit, :destroy]
	
	def create
    	@prep = Prep.find(params[:prep_id])
    	@prep_ingredient = @prep.prep_ingredients.create(params[:prep_ingredient].permit(:ingredient_id, :quantity))
    	redirect_to edit_prep_path(@prep)
  	end

  	def new
  		@prep = Prep.find(params[:prep_id])
  	end

  	def destroy
    	@prep = Prep.find(params[:prep_id])
    	@prep_ingredient = @prep.prep_ingredients.find(params[:id])
    	@prep_ingredient.destroy
    	redirect_to edit_prep_path(@prep)
  	end

  	def index
  		@prep_ingredients = Prep_ingredients.all
  	end

    def edit
    end
end

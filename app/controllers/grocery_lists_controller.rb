class GroceryListsController < ApplicationController
	def create
    	@user = User.find(params[:user_id])
    	@grocery_list = @user.grocery_lists.create(params[:grocery_list])
    	redirect_to @user
  	end

  	def new
  		@grocery_list = GroceryList.new
  	end

  	#def destroy
    #	@prep = Prep.find(params[:prep_id])
    #	@prep_ingredient = @prep.prep_ingredients.find(params[:id])
    #	@prep_ingredient.destroy
    #	redirect_to prep_path(@protein)
  	#end

  	def index
  		@grocery_list = GroceryList.new
  	end

    def edit
    end
end

class IngredientsController < ApplicationController
	before_action :signed_in_user, only: [:create, :edit, :destroy]
	before_action :admin_user, only: [:create, :edit, :destroy]

	def new
		@ingredient = Ingredient.new
	end

	def create
		@ingredient = Ingredient.new(params[:ingredient].permit(:name, :unit_of_measure))

		if @ingredient.save
			redirect_to @ingredient
		else
			render 'new'
		end
	end

	def edit
		@ingredient = Ingredient.find(params[:id])
	end

	def update
		@ingredient = Ingredient.find(params[:id])

		if @ingredient.update(params[:ingredient].permit(:name, :unit_of_measure))
			redirect_to @ingredient
		else
			render 'edit'
		end
	end
	
	def destroy
		@ingredient = Ingredient.find(params[:id])

		@ingredient.destroy

		redirect_to ingredient_path
	end

	def index
		@ingredients = Ingredient.all
	end

	def show
		@ingredient = Ingredient.find(params[:id])
	end

end
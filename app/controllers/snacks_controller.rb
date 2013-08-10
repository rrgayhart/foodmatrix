class SnacksController < ApplicationController
	before_action :signed_in_user, only: [:create, :edit, :destroy]
	before_action :admin_user, only: [:create, :edit, :destroy]
	def index
		@snacks = Snack.all
	end

	def new
		@snack = Snack.new
	end

	def create
		@snack = Snack.new(params.require(:snack).permit(:name, :body))
		@snack.save
		redirect_to snacks_path
	end

	def edit
		@snack = find_snack
	end

	def update
		@snack = find_snack
	end

	def show
		@snack = find_snack
	end

	def update
		@snack = find_snack
		if @snack.update(params[:snack])
			redirect_to(@book)
		else
			render :edit
		end
	end

private

	def find_snack
		Snack.find(params[:id])
	end
end
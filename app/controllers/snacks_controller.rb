class SnacksController < ApplicationController
	def index
		@snacks = Snack.all
	end

	def new
		@snacks = Snack.new
	end

	def show
		@snack = Snack.find(params[:id])
	end

	def update
		@snack = Snack.find(params[:id])
		if @snack.update(params[:snack])
			redirect_to(@book)
		else
			render :edit
		end
	end
end
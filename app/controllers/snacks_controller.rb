class SnacksController < ApplicationController
	def index
		@snacks = Snack.all
	end

	def new
		@snacks = Snack.new
	end

	def edit
		@snack = Snack.find_snack
	end

	def update
		@snack = Snack.find_snack
	end

	def show
		@snack = Snack.find_snack
	end

	def update
		@snack = Snack.find_snack
		if @snack.update(params[:snack])
			redirect_to(@book)
		else
			render :edit
		end
	end

private

	def find_snack
		snack.find(params[:id])
	end
end
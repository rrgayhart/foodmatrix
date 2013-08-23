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
		@snack = Snack.new(params[:snack].permit(:name, :body))

		if @snack.save
			redirect_to @snack
		else
			render 'new'
		end
	end

	def edit
		@snack = find_snack
	end

	def update
		@snack = find_snack

		if @snack.update(params[:snack].permit(:name, :body))
			redirect_to @snack
		else
			render 'edit'
		end
	end

	def show
		@snack = find_snack
		@preps = @snack.preps.paginate(page: params[:page]) #makes the paginate function work
	end

	def update
		@snack = find_snack
		if @snack.update(params[:snack])
			redirect_to(@book)
		else
			render :edit
		end
	end

	def destroy
		@snack = Snack.find(params[:id])
		@snack.destroy

		redirect_to snacks_path
	end

private

	def find_snack
		Snack.find(params[:id])
	end
end
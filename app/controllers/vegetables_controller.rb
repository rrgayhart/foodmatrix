class VegetablesController < ApplicationController
  before_action :signed_in_user, only: [:create, :edit, :destroy]
  before_action :admin_user, only: [:create, :edit, :destroy]
  # GET /vegetables
  # GET /vegetables.json
  def index
    @vegetables = Vegetable.all
  end

  # GET /vegetables/1
  # GET /vegetables/1.json
  def show
    @vegetable = Vegetable.find(params[:id])
    @vegetables = @vegetable.preps.paginate(page: params[:page]) #makes the paginate function work
  end

  # GET /vegetables/new
  def new
    @vegetable = Vegetable.new
  end

  # GET /vegetables/1/edit
  def edit
    @vegetable = Vegetable.find(params[:id])
  end

  # POST /vegetables
  # POST /vegetables.json
  def create
    @vegetable = Vegetable.new(params[:vegetable].permit(:name, :body))

    if @vegetable.save
      redirect_to @vegetable
    else
      render 'new'
    end
  end

  # PATCH/PUT /vegetables/1
  # PATCH/PUT /vegetables/1.json
  def update
    @vegetable = Vegetable.find(params[:id])

    if @vegetable.update(params[:vegetable].permit(:name, :body))
      redirect_to @vegetable
    else
      render 'edit'
    end
  end

  # DELETE /vegetables/1
  # DELETE /vegetables/1.json
  def destroy
    @vegetable = Vegetable.find(params[:id])
    @vegetable.destroy

    redirect_to vegetables_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vegetable
      @vegetable = Vegetable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vegetable_params
      params.require(:vegetable).permit(:name, :body)
    end
end

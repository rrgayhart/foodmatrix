class SpicesController < ApplicationController
  before_action :signed_in_user, only: [:create, :edit, :destroy]
  before_action :admin_user, only: [:create, :edit, :destroy]
 
  def index
    @spices = Spice.all
  end

  def show
    @spice = Spice.find(params[:id])
    @preps = @spice.preps.paginate(page: params[:page]) #makes the paginate function work
  end

  def new
    @spice = Spice.new
  end

  def edit
    @spice = Spice.find(params[:id])
  end

  def create
    @spice = Spice.new(params[:spice].permit(:name, :body))

    if @spice.save
      redirect_to @spice
    else
      render 'new'
    end
  end


  def update
    @spice = Spice.find(params[:id])

    if @spice.update(params[:spice].permit(:name, :body))
      redirect_to @spice
    else
      render 'edit'
    end
  end

  # DELETE /spices/1
  # DELETE /spices/1.json
  def destroy
    @spice = Spice.find(params[:id])
    @spice.destroy

    redirect_to spices_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spice
      @spice = Spice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spice_params
      params.require(:spice).permit(:name, :body)
    end
end

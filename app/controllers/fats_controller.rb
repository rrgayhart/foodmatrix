class FatsController < ApplicationController
 before_action :signed_in_user, only: [:create, :edit, :destroy]
  before_action :admin_user, only: [:create, :edit, :destroy]

  # GET /fats
  # GET /fats.json
  def index
    @fats = Fat.all
  end

  # GET /fats/1
  # GET /fats/1.json
  def show
    @fat = Fat.find(params[:id])
    @preps = @fat.preps.paginate(page: params[:page]) #makes the paginate function work
  end

  # GET /fats/new
  def new
    @fat = Fat.new
  end

  # GET /fats/1/edit
  def edit
    @fat = Fat.find(params[:id])
  end

  # POST /fats
  # POST /fats.json
  def create
    @fat = Fat.new(fat_params)

    respond_to do |format|
      if @fat.save
        format.html { redirect_to @fat, notice: 'Fat was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fat }
      else
        format.html { render action: 'new' }
        format.json { render json: @fat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fats/1
  # PATCH/PUT /fats/1.json
  def update
    respond_to do |format|
      if @fat.update(fat_params)
        format.html { redirect_to @fat, notice: 'Fat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fats/1
  # DELETE /fats/1.json
  def destroy
    @fat.destroy
    respond_to do |format|
      format.html { redirect_to fats_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fat
      @fat = Fat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fat_params
      params.require(:fat).permit(:name, :body)
    end
end

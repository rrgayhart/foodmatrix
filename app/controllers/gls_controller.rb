class GlsController < ApplicationController
  before_action :set_gl, only: [:show, :edit, :update, :destroy]

  # GET /gls
  # GET /gls.json
  def index
    @gls = Gl.all
  end

  # GET /gls/1
  # GET /gls/1.json
  def show
  end

  # GET /gls/new
  def new
    @gl = Gl.new
  end

  # GET /gls/1/edit
  def edit
  end

  # POST /gls
  # POST /gls.json
  def create
    @gl = Gl.new(gl_params)

    respond_to do |format|
      if @gl.save
        format.html { redirect_to @gl, notice: 'Gl was successfully created.' }
        format.json { render action: 'show', status: :created, location: @gl }
      else
        format.html { render action: 'new' }
        format.json { render json: @gl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gls/1
  # PATCH/PUT /gls/1.json
  def update
    respond_to do |format|
      if @gl.update(gl_params)
        format.html { redirect_to @gl, notice: 'Gl was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @gl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gls/1
  # DELETE /gls/1.json
  def destroy
    @gl.destroy
    respond_to do |format|
      format.html { redirect_to gls_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gl
      @gl = Gl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gl_params
      params.require(:gl).permit(:grocery_list_id, :user_id)
    end
end

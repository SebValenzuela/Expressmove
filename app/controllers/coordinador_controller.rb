class CoordinadorController < ApplicationController
  before_action :set_coordinador, only: [:show, :edit, :update, :destroy]

  # GET /coordinador
  # GET /coordinador.json
  def index
    @coordinador = coordinador.all
  end

  # GET /coordinador/1
  # GET /coordinador/1.json
  def show
  end

  # GET /coordinador/new
  def new
    @coordinador = coordinador.new
  end

  # GET /coordinador/1/edit
  def edit
  end

  # POST /coordinador
  # POST /coordinador.json
  def create
    @coordinador = coordinador.new(coordinador_params)

    respond_to do |format|
      if @coordinador.save
        format.html { redirect_to @coordinador, notice: 'coordinador was successfully created.' }
        format.json { render :show, status: :created, location: @coordinador }
      else
        format.html { render :new }
        format.json { render json: @coordinador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coordinador/1
  # PATCH/PUT /coordinador/1.json
  def update
    respond_to do |format|
      if @coordinador.update(coordinador_params)
        format.html { redirect_to @coordinador, notice: 'coordinador was successfully updated.' }
        format.json { render :show, status: :ok, location: @coordinador }
      else
        format.html { render :edit }
        format.json { render json: @coordinador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coordinador/1
  # DELETE /coordinador/1.json
  def destroy
    @coordinador.destroy
    respond_to do |format|
      format.html { redirect_to coordinador_url, notice: 'coordinador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coordinador
      @coordinador = coordinador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coordinador_params
      params.require(:coordinador).permit(:nombre, :rut, :email, :telefono, :direccion)
    end
end

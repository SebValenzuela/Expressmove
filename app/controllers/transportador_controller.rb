class TransportadorController < ApplicationController
  before_action :set_transportador, only: [:show, :edit, :update, :destroy]

  # GET /transportador
  # GET /transportador.json
  def index
    @transportador = transportador.all
  end

  # GET /transportador/1
  # GET /transportador/1.json
  def show
  end

  # GET /transportador/new
  def new
    @transportador = transportador.new
  end

  # GET /transportador/1/edit
  def edit
  end

  # POST /transportador
  # POST /transportador.json
  def create
    @transportador = transportador.new(transportador_params)

    respond_to do |format|
      if @transportador.save
        format.html { redirect_to @transportador, notice: 'transportador was successfully created.' }
        format.json { render :show, status: :created, location: @transportador }
      else
        format.html { render :new }
        format.json { render json: @transportador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transportador/1
  # PATCH/PUT /transportador/1.json
  def update
    respond_to do |format|
      if @transportador.update(transportador_params)
        format.html { redirect_to @transportador, notice: 'transportador was successfully updated.' }
        format.json { render :show, status: :ok, location: @transportador }
      else
        format.html { render :edit }
        format.json { render json: @transportador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transportador/1
  # DELETE /transportador/1.json
  def destroy
    @transportador.destroy
    respond_to do |format|
      format.html { redirect_to transportador_url, notice: 'transportador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transportador
      @transportador = transportador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transportador_params
      params.require(:transportador).permit(:nombre, :rut, :email, :telefono, :direccion)
    end
end

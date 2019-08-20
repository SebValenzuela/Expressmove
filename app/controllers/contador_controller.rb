class ContadorController < ApplicationController
  before_action :set_contador, only: [:show, :edit, :update, :destroy]

  # GET /contador
  # GET /contador.json
  def index
    @contador = contador.all
  end

  # GET /contador/1
  # GET /contador/1.json
  def show
  end

  # GET /contador/new
  def new
    @contador = contador.new
  end

  # GET /contador/1/edit
  def edit
  end

  # POST /contador
  # POST /contador.json
  def create
    @contador = contador.new(contador_params)

    respond_to do |format|
      if @contador.save
        format.html { redirect_to @contador, notice: 'contador was successfully created.' }
        format.json { render :show, status: :created, location: @contador }
      else
        format.html { render :new }
        format.json { render json: @contador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contador/1
  # PATCH/PUT /contador/1.json
  def update
    respond_to do |format|
      if @contador.update(contador_params)
        format.html { redirect_to @contador, notice: 'contador was successfully updated.' }
        format.json { render :show, status: :ok, location: @contador }
      else
        format.html { render :edit }
        format.json { render json: @contador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contador/1
  # DELETE /contador/1.json
  def destroy
    @contador.destroy
    respond_to do |format|
      format.html { redirect_to contador_url, notice: 'contador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contador
      @contador = contador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contador_params
      params.require(:contador).permit(:nombre, :rut, :email, :telefono, :direccion)
    end
end

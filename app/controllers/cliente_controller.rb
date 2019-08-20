class ClienteController < ApplicationController
  before_action :set_cliente, only: [:show, :edit, :update, :destroy]

  # GET /cliente
  # GET /cliente.json
  def index
    @cliente = cliente.all
  end

  # GET /cliente/1
  # GET /cliente/1.json
  def show
  end

  # GET /cliente/new
  def new
    @cliente = cliente.new
  end

  # GET /cliente/1/edit
  def edit
  end

  # POST /cliente
  # POST /cliente.json
  def create
    @cliente = cliente.new(cliente_params)

    respond_to do |format|
      if @cliente.save
        format.html { redirect_to @cliente, notice: 'cliente was successfully created.' }
        format.json { render :show, status: :created, location: @cliente }
      else
        format.html { render :new }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cliente/1
  # PATCH/PUT /cliente/1.json
  def update
    respond_to do |format|
      if @cliente.update(cliente_params)
        format.html { redirect_to @cliente, notice: 'cliente was successfully updated.' }
        format.json { render :show, status: :ok, location: @cliente }
      else
        format.html { render :edit }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cliente/1
  # DELETE /cliente/1.json
  def destroy
    @cliente.destroy
    respond_to do |format|
      format.html { redirect_to cliente_url, notice: 'cliente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente
      @cliente = cliente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cliente_params
      params.require(:cliente).permit(:nombre, :rut, :email, :telefono, :direccion)
    end
end

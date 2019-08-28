class ConveyorController < ApplicationController
  before_action :set_conveyor, only: [:show, :edit, :update, :destroy]

  # GET /conveyors
  # GET /conveyors.json
  def index
    @conveyors = Conveyor.all
  end

  # GET /conveyors/1
  # GET /conveyors/1.json
  def show
  end

  # GET /conveyors/new
  def new
    @conveyor = Conveyor.new
  end

  # GET /conveyors/1/edit
  def edit
  end

  # POST /conveyors
  # POST /conveyors.json
  def create
    @conveyor = Conveyor.new(conveyor_params)

    respond_to do |format|
      if @conveyor.save
        format.html { redirect_to @conveyor, notice: 'Conveyor was successfully created.' }
        format.json { render :show, status: :created, location: @conveyor }
      else
        format.html { render :new }
        format.json { render json: @conveyor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conveyors/1
  # PATCH/PUT /conveyors/1.json
  def update
    respond_to do |format|
      if @conveyor.update(transportador_params)
        format.html { redirect_to @conveyor, notice: 'Conveyor was successfully updated.' }
        format.json { render :show, status: :ok, location: @conveyor }
      else
        format.html { render :edit }
        format.json { render json: @conveyor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conveyors/1
  # DELETE /conveyors/1.json
  def destroy
    @conveyor.destroy
    respond_to do |format|
      format.html { redirect_to transportador_url, notice: 'Conveyor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conveyor
      @conveyor = Conveyor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def conveyor_params
      params.require(:conveyor).permit(:producto, :fecha, :direccion)
    end
end

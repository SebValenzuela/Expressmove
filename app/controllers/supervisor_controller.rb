class SupervisorController < ApplicationController
  before_action :set_supervisor, only: [:show, :edit, :update, :destroy]

  # GET /supervisor
  # GET /supervisor.json
  def index
    @supervisor = supervisor.all
  end

  # GET /supervisor/1
  # GET /supervisor/1.json
  def show
  end

  # GET /supervisor/new
  def new
    @supervisor = supervisor.new
  end

  # GET /supervisor/1/edit
  def edit
  end

  # POST /supervisor
  # POST /supervisor.json
  def create
    @supervisor = supervisor.new(supervisor_params)

    respond_to do |format|
      if @supervisor.save
        format.html { redirect_to @supervisor, notice: 'supervisor was successfully created.' }
        format.json { render :show, status: :created, location: @supervisor }
      else
        format.html { render :new }
        format.json { render json: @supervisor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supervisor/1
  # PATCH/PUT /supervisor/1.json
  def update
    respond_to do |format|
      if @supervisor.update(supervisor_params)
        format.html { redirect_to @supervisor, notice: 'supervisor was successfully updated.' }
        format.json { render :show, status: :ok, location: @supervisor }
      else
        format.html { render :edit }
        format.json { render json: @supervisor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supervisor/1
  # DELETE /supervisor/1.json
  def destroy
    @supervisor.destroy
    respond_to do |format|
      format.html { redirect_to supervisor_url, notice: 'supervisor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supervisor
      @supervisor = supervisor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supervisor_params
      params.require(:supervisor).permit(:nombre, :rut, :email, :telefono, :direccion)
    end
end

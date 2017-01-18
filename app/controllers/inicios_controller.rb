class IniciosController < ApplicationController
  before_action :set_inicio, only: [:show, :edit, :update, :destroy]

  # GET /inicios
  # GET /inicios.json
  def index
    @inicios = Inicio.all
  end

  # GET /inicios/1
  # GET /inicios/1.json
  def show
  end

  # GET /inicios/new
  def new
    @inicio = Inicio.new
  end

  # GET /inicios/1/edit
  def edit
  end

  # POST /inicios
  # POST /inicios.json
  def create
    @inicio = Inicio.new(inicio_params)

    respond_to do |format|
      if @inicio.save
        format.html { redirect_to @inicio, notice: 'Inicio was successfully created.' }
        format.json { render :show, status: :created, location: @inicio }
      else
        format.html { render :new }
        format.json { render json: @inicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inicios/1
  # PATCH/PUT /inicios/1.json
  def update
    respond_to do |format|
      if @inicio.update(inicio_params)
        format.html { redirect_to @inicio, notice: 'Inicio was successfully updated.' }
        format.json { render :show, status: :ok, location: @inicio }
      else
        format.html { render :edit }
        format.json { render json: @inicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inicios/1
  # DELETE /inicios/1.json
  def destroy
    @inicio.destroy
    respond_to do |format|
      format.html { redirect_to inicios_url, notice: 'Inicio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inicio
      @inicio = Inicio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inicio_params
      params.fetch(:inicio, {})
    end
end

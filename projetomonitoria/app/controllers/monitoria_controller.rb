class MonitoriaController < ApplicationController
  before_action :set_monitorium, only: [:show, :edit, :update, :destroy]

  # GET /monitoria
  # GET /monitoria.json
  def index
    if params[:disciplina_id].present?
      lId_parametro = params.require(:disciplina_id)
      @monitoria = Monitorium.where(disciplina: lId_parametro)
    else
      @monitoria = Monitorium.all
    end
  end

  # GET /monitoria/1
  # GET /monitoria/1.json
  def show
  end

  # GET /monitoria/new
  def new
    @monitorium = Monitorium.new
  end

  # GET /monitoria/1/edit
  def edit
  end

  # POST /monitoria
  # POST /monitoria.json
  def create
    @monitorium = Monitorium.new(monitorium_params)

    respond_to do |format|
      if @monitorium.save
        format.html { redirect_to @monitorium, notice: 'Monitorium was successfully created.' }
        format.json { render :show, status: :created, location: @monitorium }
      else
        format.html { render :new }
        format.json { render json: @monitorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monitoria/1
  # PATCH/PUT /monitoria/1.json
  def update
    respond_to do |format|
      if @monitorium.update(monitorium_params)
        format.html { redirect_to @monitorium, notice: 'Monitorium was successfully updated.' }
        format.json { render :show, status: :ok, location: @monitorium }
      else
        format.html { render :edit }
        format.json { render json: @monitorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monitoria/1
  # DELETE /monitoria/1.json
  def destroy
    @monitorium.destroy
    respond_to do |format|
      format.html { redirect_to monitoria_url, notice: 'Monitorium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monitorium
      @monitorium = Monitorium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def monitorium_params
      params.require(:monitorium).permit(:utilizador_id, :local, :disciplina_id)
    end
end

class MonitoriaController < ApplicationController
  before_action :set_monitorium, only: [:show, :edit, :update, :destroy]
  #before_action :authenticate_user!, :except => [:show, :index]
  # GET /monitoria
  # GET /monitoria.json
  def index
    if params[:search]
      @monitoria = Monitorium.where("monitor like ?", "%#{params[:search]}%")
    else
      @monitoria = Monitorium.order(:monitor)
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
        format.html { redirect_to @monitorium, notice: 'Nova monitoria criada.' }
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
        format.html { redirect_to @monitorium, notice: 'Monitoria atualizada com sucesso.' }
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
      format.html { redirect_to monitoria_url, notice: 'Monitoria apagada com sucesso.' }
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
      params.require(:monitorium).permit(:monitor, :local, :data, :inicio, :fim, :disciplina_id)
    end
end

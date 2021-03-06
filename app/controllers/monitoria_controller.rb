class MonitoriaController < ApplicationController
  before_action :set_monitorium, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, :except => [:show, :index]

  # GET /monitoria
  # GET /monitoria.json
  def index
    @User = current_user
    if params[:monitore_id].present?
       @monitoria = Monitorium.where(monitor_id: params[:monitore_id]).order(:data)
    else
      if params[:disciplina_id].present?
      lId_parametro = params.require(:disciplina_id)
      @monitoria = Monitorium.where(disciplina: lId_parametro).order(:data)
      else
      @monitoria = Monitorium.order(:data)
      end
    end
  end


  # GET /monitoria/1
  # GET /monitoria/1.json
  def show
  end

  # GET /monitoria/new
  def new
    @monitorium = Monitorium.new
    authorize @monitorium
  end
  
  

  # GET /monitoria/1/edit
  def edit
  end

  # POST /monitoria
  # POST /monitoria.json
  def create
    @monitorium = Monitorium.new(monitorium_params)
    @monitorium.capacidadeatual = @monitorium.capacidade

    respond_to do |format|
      if @monitorium.save
        format.html { redirect_to @monitorium, notice: 'Monitoria criada com sucesso.' }
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
      format.html { redirect_to monitoria_url, notice: 'Monitoria foi cancelada com sucesso.' }
      format.json { head :no_content }
    end
  end
  
  def agendar
    @user = current_user
    @agendamento = Agenda.new()
    @monitorium = Monitorium.find(params[:id])
    @agendamento.monitorium = @monitorium
    @agendamento.user = current_user
    lid_user = @user.id
    lid_monitoria = @monitorium.id
    @verifica = Agenda.find_by(monitorium: lid_monitoria, user: lid_user)
    if @verifica.nil?
      if @monitorium.capacidadeatual > 0
        @monitorium.decrement! :capacidadeatual
        @agendamento.save
        respond_to do |format|
          format.html { redirect_to monitoria_url, notice: 'Aula agendada com sucesso.' }
          format.json { head :no_content }
        end
      else
        respond_to do |format|
          format.html { redirect_to monitoria_url, notice: 'Infelizmente essa aula está lotada.' }
          format.json { head :no_content }
        end
      end
    else
      respond_to do |format|
        format.html { redirect_to monitoria_url, notice: 'Ja esta agendado.' }
        format.json { head :no_content }
      end
    end
  end
  
  def cancelar
    @user = current_user
    @monitorium = Monitorium.find(params[:id])
    lid_user = @user.id
    lid_monitoria = @monitorium.id
    if @monitorium.capacidadeatual < @monitorium.capacidade
      @monitorium.increment! :capacidadeatual
      Agenda.delete_all(monitorium: lid_monitoria, user: lid_user)
      respond_to do |format|
        format.html { redirect_to monitoria_url, notice: 'Agendamento de aula cancelado com sucesso.' }
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        format.html { redirect_to monitoria_url, notice: 'Não existe nenhum agendamento para cancelar.' }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monitorium
      @monitorium = Monitorium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def monitorium_params
      params.require(:monitorium).permit(:monitor_id, :professor_id, :disciplina_id, :local, :data, :horario, :capacidade)
    end
end

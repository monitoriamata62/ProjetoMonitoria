class UnidadesController < ApplicationController
  before_action :set_unidade, only: [:show, :edit, :update, :destroy]

  # GET /unidades
  # GET /unidades.json2
  def index
    if params[:area_id].present?
      lId_parametro = params.require(:area_id)
      @unidades = Unidade.where(area: lId_parametro).order(:descricao).paginate(:page => params[:page], :per_page => 10)
    else
      if params[:search]
        @areas = Unidade.where("descricao like ?", "%#{params[:search]}%")
      else
        @unidades = Unidade.order(:descricao).paginate(:page => params[:page], :per_page => 10)
      end
    end
  end

  # GET /unidades/12
  # GET /unidades/1.json
  def show
  end

  # GET /unidades/new
  def new
    @unidade = Unidade.new
  end

  # GET /unidades/1/edit
  def edit
  end

  # POST /unidades
  # POST /unidades.json
  def create
    @unidade = Unidade.new(unidade_params)

    respond_to do |format|
      if @unidade.save
        format.html { redirect_to @unidade, notice: 'Unidade was successfully created.' }
        format.json { render :show, status: :created, location: @unidade }
      else
        format.html { render :new }
        format.json { render json: @unidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unidades/1
  # PATCH/PUT /unidades/1.json
  def update
    respond_to do |format|
      if @unidade.update(unidade_params)
        format.html { redirect_to @unidade, notice: 'Unidade was successfully updated.' }
        format.json { render :show, status: :ok, location: @unidade }
      else
        format.html { render :edit }
        format.json { render json: @unidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unidades/1
  # DELETE /unidades/1.json
  def destroy
    @unidade.destroy
    respond_to do |format|
      format.html { redirect_to unidades_url, notice: 'Unidade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unidade
      @unidade = Unidade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unidade_params
      params.require(:unidade).permit(:descricao, :area_id)
    end
end


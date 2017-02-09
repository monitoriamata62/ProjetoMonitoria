class UtilizadorsController < ApplicationController
  before_action :set_utilizador, only: [:show, :edit, :update, :destroy]

  # GET /utilizadors
  # GET /utilizadors.json
  def index
    @utilizadors = Utilizador.all
  end

  # GET /utilizadors/1
  # GET /utilizadors/1.json
  def show
  end

  def monitores
    @utilizadors = Utilizador.where(identificador: 2)
  end


  # GET /utilizadors/new
  def new
    @utilizador = Utilizador.new
  end

  # GET /utilizadors/1/edit
  def edit
  end

  # POST /utilizadors
  # POST /utilizadors.json
  def create
    @utilizador = Utilizador.new(utilizador_params)

    respond_to do |format|
      if @utilizador.save
        format.html { redirect_to @utilizador, notice: 'Utilizador was successfully created.' }
        format.json { render :show, status: :created, location: @utilizador }
      else
        format.html { render :new }
        format.json { render json: @utilizador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /utilizadors/1
  # PATCH/PUT /utilizadors/1.json
  def update
    respond_to do |format|
      if @utilizador.update(utilizador_params)
        format.html { redirect_to @utilizador, notice: 'Utilizador was successfully updated.' }
        format.json { render :show, status: :ok, location: @utilizador }
      else
        format.html { render :edit }
        format.json { render json: @utilizador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /utilizadors/1
  # DELETE /utilizadors/1.json
  def destroy
    @utilizador.destroy
    respond_to do |format|
      format.html { redirect_to utilizadors_url, notice: 'Utilizador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_utilizador
      @utilizador = Utilizador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def utilizador_params
      params.require(:utilizador).permit(:nome, :email, :matricula, :identificador)
    end
end

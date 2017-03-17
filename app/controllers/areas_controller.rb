class AreasController < ApplicationController
  before_action :set_area, only: [:show]

  # GET /areas
  # GET /areas.json
  def index
    if params[:search]
      @areas = Area.where("descricao like ?", "%#{params[:search]}%")
    else
      @areas = Area.order(:descricao).paginate(:page => params[:page], :per_page => 10)
    end
  end

  # GET /areas/1
  # GET /areas/1.json

  # GET /areas/1/11
  def show
  end

  # GET /areas/new4


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_area
      @area = Area.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def area_params
      params.require(:area).permit(:descricao)
    end
end

class RegionsController < ApplicationController
  before_action :set_region, only: [:show, :edit, :update, :destroy]
  before_action :set_municipalities, only: [:create, :update]

  def index
    @regions = Region.all
  end

  def show
  end

  def new
    @region = Region.new
  end

  def edit
  end

  def create
    @region = Region.new(region_params)

    if @region.save
      @region.municipalities << @municipalities
      redirect_to regions_url, notice: 'Región creada correctamente.'
    else
      render :new
    end
  end

  def update
    if @region.update(region_params)
      @region.update_municipalities(@municipalities)
      redirect_to regions_url, notice: 'Región actualizada correctamente.'
    else
      render :edit
    end
  end

  def destroy
    @region.destroy
    redirect_to regions_url, notice: 'Región eliminada correctamente.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_region
      @region = Region.find(params[:id])
    end

    def set_municipalities
      @municipalities = Municipality.find(params[:region][:municipalities].select(&:present?))
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def region_params
      params.require(:region).permit(:numeric_code, :name)
    end
end

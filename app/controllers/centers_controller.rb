class CentersController < ApplicationController
  before_action :set_center, only: [:show, :update, :destroy]

  # GET /centers
  def index
    @centers = Center.all

    render json: @centers
  end

  # GET /centers/1
  def show
    render json: @center
  end

  # POST /centers
  def create
    @center = Center.new(center_params)

    if @center.save
      render json: @center, status: :created, location: @center
    else
      render json: @center.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /centers/1
  def update
    if @center.update(center_params)
      render json: @center
    else
      render json: @center.errors, status: :unprocessable_entity
    end
  end

  # DELETE /centers/1
  def destroy
    @center.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_center
      @center = Center.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def center_params
      params.require(:center).permit(:building, :hall, :address, :city, :state, :price, :capacity)
    end
end

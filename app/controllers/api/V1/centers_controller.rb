class Api::V1::CentersController < ApplicationController
  before_action :set_center, only: %i[show update destroy]

  def index
    @centers = Center.all

    render json: @centers
  end

  def show
    render json: @center
  end

  def create
    @center = Center.new(center_params)

    if @center.save
      render json: @center, status: :created
    else
      render json: @center.errors, status: :unprocessable_entity
    end
  end

  def update
    if @center.update(update_params)
      render json: @center
    else
      render json: @center.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @center.destroy
  end

  private

  def set_center
    @center = Center.find(params[:id])
  end

  def center_params
    params.permit(:building, :hall, :ddress, :price, :capacity, :city, :state, :image)
  end

  def update_params
    params.permit(:id, :building, :hall, :address, :price, :capacity, :city, :state, :image)
  end
end

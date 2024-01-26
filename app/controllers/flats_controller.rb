class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :destroy]

  def index
    @flats = Flat.all
  end

  def show
    @flat = set_flat
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save
    redirect_to flat_path(@flat)
  end

  def destroy
    @flat = Flat.find(set_flat)
    @flat.destroy
    redirect_to flats_path, status: :see_other
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end

  def set_flat
    Flat.find(params[:id])
  end
end

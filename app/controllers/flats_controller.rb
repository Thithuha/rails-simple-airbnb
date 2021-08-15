class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, ]
  def index
    @flats = Flat.all
  end

  def show
  end

  def create
    Flat.create(flat_param)
    @flat.save
    redirect_to flats_path(flat)
  end

  def new
    @flat = Flat.new
  end

  def update

  end

  def destroy

  end

  private

  def flat_param
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end
end

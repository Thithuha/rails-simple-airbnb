class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]
  def index
    @flats = Flat.all
  end

  def top
    @flats = Flat.where(rating: 3)
  end

  def show
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save
    redirect_to flats_path(flat)
  end

  def new
    @flat = Flat.new
  end

  def edit
  end

  def update

  end

  def destroy

  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end
end

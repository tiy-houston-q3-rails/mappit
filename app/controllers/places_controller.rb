class PlacesController < ApplicationController
  def create
    @place = Place.new(params.require(:place).permit(:address))
    @place.save
    redirect_to root_path
  end
end

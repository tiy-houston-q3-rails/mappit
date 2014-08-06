class MapController < ApplicationController
  def show
    @place = Place.new
    @places = Place.all
  end
end

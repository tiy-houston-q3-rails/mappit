class AddressGeocoder
  include Sidekiq::Worker

  def perform(place_id)

    place = Place.find(place_id)

    results = Geocoder.search(place.address)

    place.latitude = results.first.geometry["location"]["lat"]
    place.longitude = results.first.geometry["location"]["lng"]
    place.save

    Pusher['mappit'].trigger('newPlace', place.to_json )

  end
end

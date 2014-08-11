class Place < ActiveRecord::Base

  validates :address, presence: true

  # geocoded_by :address
  # after_validation :geocode

  after_create do
    AddressGeocoder.perform_async self.id
  end
end

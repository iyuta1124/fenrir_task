class Shop < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  # window.location.href = "/shops/search_location?latitude="+position.coords.latitude+"&longitude="+position.coords.longitude
end

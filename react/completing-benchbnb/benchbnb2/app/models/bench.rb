class Bench < ApplicationRecord
  validates :description, presence: true
  validates :lat, presence: true
  validates :lng, presence: true
  
  def self.in_bounds(bounds)
    latitude_upper_bound = bounds["northEast"]["lat"]
    longitutde_upper_bound = bounds["northEast"]["lng"]
    latitude_lower_bound = bounds["southWest"]["lat"]
    longitude_lower_bound = bounds["southWest"]["lng"]
    Bench.where("lat BETWEEN ? AND ? AND lng BETWEEN ? AND ?", latitude_lower_bound, latitude_upper_bound, longitude_lower_bound, longitutde_upper_bound)
  end
end

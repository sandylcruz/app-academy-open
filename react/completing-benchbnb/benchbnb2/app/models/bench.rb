class Bench < ApplicationRecord
  validates :description, presence: true
  validates :lat, presence: true
  validates :lng, presence: true
  
  def self.in_bounds(bounds)
    latitude_upper_bound = bounds["northEast"]["lat"].to_f
    longitutde_upper_bound = bounds["northEast"]["lng"].to_f
    latitude_lower_bound = bounds["southWest"]["lat"].to_f
    longitude_lower_bound = bounds["southWest"]["lng"].to_f
    Bench.where("lat BETWEEN ? AND ? AND lng BETWEEN ? AND ?", latitude_lower_bound, latitude_upper_bound, longitude_lower_bound, longitutde_upper_bound)
  end
end

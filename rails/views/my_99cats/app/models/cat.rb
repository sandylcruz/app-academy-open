require "action_view"

class Cat < ApplicationRecord
  include ActionView::Helpers::DateHelper
  validates :birth_date, :name, :description, presence: true
  validates :color, presence: true, inclusion: { in: %w(Orange Black Tabby Tuxedo Dilute-tortie White Calico) }
  validates :sex, presence: true, length: { maximum: 1 }, inclusion: { in: %w(M F) }

  has_many(
    :cat_rental_requests,
    class_name: 'CatRentalRequest',
    foreign_key: :cat_id,
    primary_key: :id,
    dependent: :destroy
  )

  def age
    time_in_seconds = Time.zone.now - birth_date.to_time
    age_in_years = time_in_seconds / 1.year.seconds
    age_in_years.floor
  end
end
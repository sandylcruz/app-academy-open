class Cat < ApplicationRecord
  validates :birth_date, :name, :description, presence: true
  validates :color, presence: true, inclusion: { in: %w(orange black brown tuxedo dilute-tortie grey white calico) }
  validates :sex, presence: true, length: { maximum: 1 }, inclusion: { in: %w(m f) }

  def age
    ((Time.zone.now – birth_date.to_time) / 1.year.seconds).floor
  end
end
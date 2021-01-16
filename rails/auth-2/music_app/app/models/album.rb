class Album < ApplicationRecord
  validates :title, presence: true
  validates :year, presence: true
  validates :band_id, presence: true
  validates :live, inclusion: { in: [true, false] }

  belongs_to :band
end
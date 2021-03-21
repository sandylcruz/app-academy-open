class Tag < ApplicationRecord
  validates :name, presence: true

  has_many :todos, through: :taggings, source: :todos



end
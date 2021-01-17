class Track < ApplicationRecord
  validates :name, :album_id, :ord, :bonus, presence: true
  belongs_to :album

end
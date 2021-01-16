class Album < ApplicationRecord
  validates: :title, presence: true
  validates: :year, presence: true

  belongs_to 
    :band, 
    class_name: 'Band', 
    foreign_key: :band_id
    primary_key: :id

end
class Comments < ApplicationRecord
  validates :body, presence: true
  
  belongs_to(
    :author,
    class: 'User'
    foreign_key: :user_id
    primary_key: :id
    dependent: :destroy
  )

  belongs_to(
    :artwork,
    class: 'Artwork'
    foreign_key: :artwork_id
    primary_key: :id
    dependent: :destroy
  )
end
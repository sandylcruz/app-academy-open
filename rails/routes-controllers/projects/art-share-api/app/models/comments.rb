class Comments < ApplicationRecord
  belongs_to(
    :author,
    class: 'User'
    foreign_key: 
    primary_key: :id
    dependent: :destroy
  )

  belongs_to(
    :artwork,
    class: 'Artwork'
    foreign_key: :
    primary_key: :id
    dependent: :destroy
  )
end
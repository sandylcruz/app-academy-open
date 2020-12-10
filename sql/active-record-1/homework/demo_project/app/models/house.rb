class House < ApplicationRecord
  has_many(
    :person,
    foreign_key: :house_id,
    primary_key: :id
  )

end
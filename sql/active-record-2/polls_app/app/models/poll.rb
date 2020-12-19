class Polls < ActiveRecord

  belongs_to(
    :users,
    class: 'Users',
    foreign_key: :author_id,
    primary_key: :id
  )

  has_many(
    :questions,
    class: 'Questions',
    foreign_key: :poll_id,
    primary_key: :id
  )
end
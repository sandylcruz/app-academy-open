class Poll < ActiveRecord

  belongs_to(
    :User,
  )

  has_many(
    :Questions
  )
end
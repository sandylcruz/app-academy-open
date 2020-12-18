class Question < ActiveRecord

  has_many(
    :answer_choices
  )
end
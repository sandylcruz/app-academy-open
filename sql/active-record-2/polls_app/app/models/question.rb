class Question < ApplicationRecord
  has_many(
    :answer_choices,
    class_name: 'AnswerChoice'
    foreign_key: :answer_choice_id,
    primary_key: :id
  )

  belongs_to(
    :poll,
    class_name: 'Poll',
    foreign_key: :poll_id,
    primary_key: :id
  )
end
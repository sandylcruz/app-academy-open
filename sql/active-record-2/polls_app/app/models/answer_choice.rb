class AnswerChoices < ApplicationRecord
  belongs_to(
    :questions,
    class_name: 'Questions',
    foreign_key: :question_id
    primary_key: :id
  )

  has_many(
    :responses,
    class_name: 'Responses',
    foreign_key: :answer_choice_id
    primary_key: :id
  )
end
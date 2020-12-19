class Questions < ApplicationRecord

  has_many(
    :answer_choices,
    class: 'AnswerChoices'
    foreign_key: :answer_choice_id,
    primary_key: :id
  )

  belongs_to(
    :polls,
    class: 'Polls',
    foreign_key: :question_id,
    primary_key: :id
  )
end
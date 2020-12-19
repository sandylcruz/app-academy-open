class Questions < ActiveRecord

  has_many(
    :answer_choices,
    class: 'AnswerChoices'
    foreign_key: :answer_choices,
    primary_key: :id
  )

  belongs_to(
    :polls,
    class: 'Polls',
    foreign_key: :question_id,
    primary_key: :id
  )
end
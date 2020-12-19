class Responses < ApplicationRecord
  belongs_to(
    :users,
    class_name: 'Users',
    foreign_key: :respondent,
    primary_key: :id
  )

  belongs_to(
    :answer_choices,
    class_name: 'AnswerChoices',
    foreign_key: :answer_choice_id,
    primary_key: :id
  )


end
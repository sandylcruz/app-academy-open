class Question < ApplicationRecord
  has_many(
    :answer_choices,
    class_name: 'AnswerChoice',
    foreign_key: :question_id,
    primary_key: :id
  )

  belongs_to(
    :poll,
    class_name: 'Poll',
    foreign_key: :poll_id,
    primary_key: :id
  )

  has_many :responses, through: :answer_choices, source: :responses

  def results_n_plus_one
    results = {}
    self.answer_choices.each do |ac|
      results[ac.text] = ac.responses.count
    end
    results
  end

  def results
    acs = self.answer_choices
    .select("answer_choices.text, COUNT(responses.id) AS num_responses")
    .left_outer_joins(:responses).group("answer_choices.id")

    acs.inject({}) do |results, ac|
      results[ac.text] = ac.num_responses; results
    end
  end
end
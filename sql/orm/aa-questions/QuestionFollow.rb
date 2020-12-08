require_relative  "QuestionsDatabase"
require_relative "Question"
require_relative 'QuestionLike'
require_relative 'Reply'
require_relative 'User'

class QuestionFollow
  def initialize(options)
    @id = options['id']
    @user_id = options['user_id']
    @question_id = options['question_id']
  end

  def self.find_by_id
  end
end
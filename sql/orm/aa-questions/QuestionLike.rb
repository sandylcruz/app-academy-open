require_relative  "QuestionsDatabase"
require_relative "Question"
require_relative 'QuestionFollow'
require_relative 'Reply'
require_relative 'User'

class QuestionLike
  def initialize
    @user_id = options['user_id']
    @question_id = options['question_id']
  end

  def self.find_by_id
  end
end
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

  def self.likers_for_question_id(question_id)
  end

  def self.num_likes_for_question_id(question_id)
  end

  def self.liked_questions_for_user_id(user_id)
end
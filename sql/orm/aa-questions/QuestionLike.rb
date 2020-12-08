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
    likers =  QuestionsDatabase.instance.execute(<<-SQL, question_id)
      SELECT * 
      FROM users
      JOIN question_likes ON users.id = question_likes.user_id
      WHERE question_likes.question_id = ?
    SQL

    likers.map { |liker| User.new(liker)}
  end

  def self.num_likes_for_question_id(question_id)
    likes =  QuestionsDatabase.instance.execute(<<-SQL, question_id)
      SELECT * 
      FROM users
      JOIN question_follows ON users.id = question_follows.user_id
      WHERE question_follows.question_id = ?
    SQL

    likes.map { |like| User.new(like)}
  end

  def self.liked_questions_for_user_id(user_id)
  end
end
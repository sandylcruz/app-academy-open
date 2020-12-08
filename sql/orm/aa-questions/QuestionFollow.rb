require_relative  "QuestionsDatabase"
require_relative "Question"
require_relative 'QuestionLike'
require_relative 'Reply'
require_relative 'User'

class QuestionFollow
  attr_reader :id, :user_id, :question_id

  def initialize(options)
    @id = options['id']
    @user_id = options['user_id']
    @question_id = options['question_id']
  end

  def self.followers_for_question_id(question_id)
    users =  QuestionsDatabase.instance.execute(<<-SQL, question_id)
      SELECT * 
      FROM users
      JOIN question_follows ON users.id = question_follows.user_id
      WHERE question_follows.question_id = ?
    SQL

    users.map { |user| User.new(user)}
  end

  # def self.followed_questions_for_user_id(user_id)
  #   question_data =  QuestionsDatabase.instance.execute(<<-SQL, user_id)
  #     SELECT * 
  #     FROM question
  #     JOIN question_follows ON = 
  #   SQL

  # question_data.map { |question_datum| QuestionFollow.new(question_datum)}
  # end
end
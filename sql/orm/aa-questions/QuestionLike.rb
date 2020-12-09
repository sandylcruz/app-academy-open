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
      SELECT COUNT(*) AS Likes
      FROM questions
      JOIN question_likes ON questions.id = question_likes.question_id
      WHERE questions.id = ?
    SQL
  end

  def self.liked_questions_for_user_id(user_id)
    questions =  QuestionsDatabase.instance.execute(<<-SQL, user_id)
      SELECT * 
      FROM questions
      JOIN question_likes ON questions.id = question_likes.question_id
      WHERE question_likes.user_id = ?
    SQL

    questions.map { |question| Question.new(question)}
  end

  def self.most_liked_questions(n)
    questions =  QuestionsDatabase.instance.execute(<<-SQL, n)
      SELECT * 
      FROM questions
      JOIN question_likes ON questions.id = question_likes.question_id
      GROUP BY questions.id
      ORDER BY COUNT(*) DESC
      LIMIT ?
    SQL

    questions.map { |question| Question.new(question)}
  end
end
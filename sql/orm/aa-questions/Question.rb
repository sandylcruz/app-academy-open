require_relative  "QuestionsDatabase"
require_relative 'QuestionFollow'
require_relative 'QuestionLike'
require_relative 'Reply'
require_relative 'User'

class Question
  attr_accessor :id, :title, :body, :author_id

  def initialize(options)
    @id = options['id']
    @title = options['title']
    @body = options['body']
    @author_id = options['author_id']
  end
  
  def self.all
    data = QuestionsDatabase.instance.execute("SELECT * FROM questions")
    data.map { |datum| Question.new(datum)}
  end

  def self.find_by_author_id(author_id)
    questions = QuestionsDatabase.instance.execute( <<-SQL, author_id)
      SELECT *
      FROM questions
      WHERE author_id = ?
    SQL

    return nil if questions.empty?
    questions.map { |question| Question.new(question) }
  end

  def author
    User.find_by_id(author_id)
  end

  def replies
    replies = Reply.find_by_question_id(id)
  end

  def followers
    QuestionFollow.followers_for_question_id(id)
  end

  def self.most_followed(n)
    QuestionFollow.most_followed_questions(n)
  end
end
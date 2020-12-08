require_relative  "QuestionsDatabase"
require_relative "Question"
require_relative 'QuestionFollow'
require_relative 'QuestionLike'
require_relative 'Reply'
require_relative 'User'

class Reply
  attr_accessor :id, :question_id, :reply_id, :author_id, :body

  def initialize(options)
    @id = options['id']
    @question_id = options['question_id']
    @reply_id = options['reply_id']
    @author_id = options['author_id']
    @body = options['body']
  end

  def self.find_by_author_id(author_id)
    replies = QuestionsDatabase.instance.execute( <<-SQL, author_id)
      SELECT *
      FROM replies
      WHERE author_id = ?
    SQL

    return nil if replies.empty?
    replies.map { |reply| Reply.new(reply) }
  end

  def self.find_by_question_id(question_id)
    replies = QuestionsDatabase.instance.execute( <<-SQL, question_id)
      SELECT *
      FROM replies
      WHERE question_id = ?
    SQL

    return nil if replies.empty?
    replies.map { |reply| Reply.new(reply) }
  end

  def author
    User.find_by_id(author_id)
  end

  def question
    Question.find_by_author_id(author_id)
  end

  def parent_reply
    Reply.find_by_author_id(author_id)
  end

  def child_replies
    Reply.find_by_author_id(reply_id)
  end
end
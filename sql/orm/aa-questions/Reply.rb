require_relative  "QuestionsDatabase"

class Reply
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
    replies.map { |reply| reply }
  end

  def self.find_by_question_id(question_id)
    replies = QuestionsDatabase.instance.execute( <<-SQL, question_id)
      SELECT *
      FROM replies
      WHERE question_id = ?
    SQL

    return nil if replies.empty?
    replies.map { |reply| reply }
  end

  def author
  end

  def question
  end

  def parent_reply
  end

  def child_replies
  end
end
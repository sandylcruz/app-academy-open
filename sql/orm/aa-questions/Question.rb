require_relative  "QuestionsDatabase"

class Question
  attr_accessor :id, :title, :body, :author

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
    questions.map { |question| question }
  end

  def author
  end

  def replies
  end
end
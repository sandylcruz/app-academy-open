require_relative  "QuestionsDatabase"
require_relative "Question"
require_relative 'QuestionFollow'
require_relative 'QuestionLike'
require_relative 'Reply'


class User
  attr_accessor :id, :fname, :lname

  def initialize(options)
    @id = options['id']
    @fname = options['fname']
    @lname = options['lname']
  end

  def self.all
    data = QuestionsDatabase.instance.execute("SELECT * FROM users")
    data.map { |datum| User.new(datum)}
  end

  def self.find_by_id(id)
    users = QuestionsDatabase.instance.execute( <<-SQL, id)
      SELECT *
      FROM users
      WHERE id = ?
    SQL

    return nil if users.empty?
    User.new(users[0])
  end

  def self.find_by_name(fname, lname)
    users = QuestionsDatabase.instance.execute( <<-SQL, fname, lname)
      SELECT *
      FROM users
      WHERE fname = ? AND lname = ?
    SQL

    users.map { |user| User.new(user)}
  end

  def create
    raise "#{self} already in database" if self.id

    QuestionsDatabase.instance.execute(<<-SQL, self.id, self.fname, self.lname)
      INSERT INTO
        users (id, fname, lname)
      VALUES
        (?, ?, ?)
    SQL
    self.id = QuestionsDatabase.instance.last_insert_row_id
  end

  def update
    raise "#{self} not in database" unless self.id

    QuestionsDatabase.instance.execute(<<-SQL, self.id, self.fname, self.lname)
      UPDATE users
      SET id = ?, fname = ?, lname = ?
      WHERE id = ?
    SQL
    self
  end

  def authored_questions
    Question.find_by_author_id(self.id)
  end

  def authored_replies
    Reply.find_by_author_id(self.id)
  end

  def followed_questions
    QuestionFollow.followed_questions_for_user_id(id)
  end

  def liked_questions(user_id)
    QuestionLike.liked_questions_for_user_id(user_id)
  end

  def average_karma
    QuestionsDatabase.instance.execute(<<-SQL, self.id)
      SELECT 
        CAST(COUNT(DISTINCT(question_likes.user_id))
        / COUNT(DISTINCT(questions.id)) AS FLOAT) AS "Average karma"
      FROM questions
      LEFT OUTER JOIN question_likes ON questions.id = question_likes.question_id
      WHERE questions.author_id = ?
    SQL
  end
end
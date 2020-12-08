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

  def authored_questions
    Question.find_by_author_id(self.id)
  end

  def authored_replies
    Reply.find_by_author_id(self.id)
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

  def followed_questions
    QuestionFollow.followed_questions_for_user_id(user_id)
  end

  def followers
    QuestionFollow.followers_for_question_id(question_id)
  end
end
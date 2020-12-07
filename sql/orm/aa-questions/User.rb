require_relative  "QuestionsDatabase"
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
end
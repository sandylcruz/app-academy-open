class Replies
  def initialize(options)
    @id = options['id']
    @question_id = options['question_id']
    @reply_id = options['reply_id']
    @author_id = options['author_id']
    @body = options['body']
  end

  def self.find_by_user_id
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
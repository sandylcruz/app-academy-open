class Item

  def valid_date?(date_string)
  end

  def initialize(title, deadline, description)
    @title = title
    @deadline = deadline
    @description = description

    if !valid_date?(deadline)
      raise "error due to invalid date"
    end
  end

  def title
    @title = title
  end

  def title=(new_title)

  end

  def deadline

  end

  def deadline=(new_deadline)
  end

  def description
    @description
  end

  def description=(new_description)
  end





end
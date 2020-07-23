class Item
  def self.valid_date?(date_string)
    split_date = date_string.split("-")
    year = split_date[0]
    month = split_date[1]
    day = split_date[2]

    return false if year.length != 4 || month.length != 2 || day.length != 2
    return false if month.to_i > 12 || month.to_i < 1
    return false if day.to_i > 31 || day.to_i < 1
    return true
  end

  attr_reader :deadline, :done
  attr_accessor :title, :description
  
  def initialize(title, deadline, description)
    @title = title
    @deadline = deadline
    @description = description
    @done = false
    raise "deadline is not valid" if !Item.valid_date?(deadline)
  end

  def deadline=(new_deadline)
    raise 'deadline is not valid' if !Item.valid_date?(new_deadline)
    @deadline = new_deadline
  end

  def toggle
    @done = !@done
  end
end
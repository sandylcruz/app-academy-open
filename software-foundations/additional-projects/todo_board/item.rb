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
  puts Item.valid_date?('10-25-2019') # false
  puts Item.valid_date?('2019-10-25') # true
  puts Item.valid_date?('1912-06-23') # true
  puts Item.valid_date?('2018-13-20') # false
  puts Item.valid_date?('2018-12-32') # false
  puts Item.valid_date?('2019-10-42') # false

  def initialize(title, deadline, description)
    @title = title
    @deadline = deadline
    @description = description
    raise "deadline is not valid" if !Item.valid_date?(deadline)
  end

  def title
    @title
  end

  def title=(new_title)
    @title = new_title
  end

  def deadline
    @deadline
  end

  def deadline=(new_deadline)
    raise 'deadline is not valid' if !Item.valid_date?(new_deadline)
    @deadline = new_deadline
  end

  def description
    @description
  end

  def description=(new_description)
    @description = new_description
  end



end
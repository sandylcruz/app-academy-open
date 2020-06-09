require "employee"

class Startup
  attr_reader :name,  :funding, :salaries,  :employees
  def initialize(name, funding, salaries)
    @name = name
    @funding = funding
    @salaries = salaries
    @employees = []
  end

  def valid_title?(title)
    if @salaries.include?(title)
      return true
    else
      return false
    end
  end

  def >(other_startup)
    self.funding > other_startup.funding
  end

  def hire(employee_name, title)
    if self.valid_title?(title)
      @employees << Employee.new(employee_name, title)
    else
      raise "title is invalid"
    end
  end

  def size
    @employees.length
  end

  def pay_employee(employee)
    @salaries[employee.title]
  end

  def payday
    @employees.each do |employee|
      self.pay_employee(employee)
    end
  end

  def average_salary
    puts(@salaries.values.inject(:+)) / @size
 
  end

  def close
    @employees = []
    @funding = 0
  end

  def acquire(other_startup)
    return other_startup.funding + self.funding

    # both_salaries = other_startup.funding + @salaries


  end
end

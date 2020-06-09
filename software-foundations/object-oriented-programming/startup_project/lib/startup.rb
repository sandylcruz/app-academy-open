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
    money_owed = @salaries[employee.title]
    if @funding >= money_owed
      employee.pay(money_owed)
      @funding -= money_owed
    else
      raise "not enough funding"
    end
  end

  def payday
    @employees.each do |employee|
      self.pay_employee(employee)
    end
  end

  def average_salary
    sum = 0
    @employees.each do |employee|
      sum += @salaries[employee.title]
    end
    sum / @employees.length
  end

  def close
    @employees = []
    @funding = 0
  end

  def acquire(startup)
    @funding += startup.funding

    @salaries += startup.salaries
    @employees += startup.employees

    # both_salaries = startup.funding + @salaries


  end
end
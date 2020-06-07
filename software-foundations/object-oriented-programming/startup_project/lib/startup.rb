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
    funding > other_startup.funding
  end

  def hire(employee_name, title)
    if self.valid_title?
      @employees.new(employee_name)
    else
    end
  end

  def size
    puts @employees
  end

  def pay_employee(employee)
  
  end

  def payday
    
  end

  def average_salary

  end

  def close
    @employees = []
    @funding = 0
  end

  def acquire(other_startup)
    @funding.other_startup += @funding

    both_salaries = @salaries.other_startup + @salaries


  end
end

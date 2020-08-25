class Employee
  attr_reader :name, :salary, :title
  attr_accessor :boss

  def initialize(name, title, salary)
    @name = name
    @title = title
    @salary = salary
  end

  def bonus(multiplier)
    bonus = employee_salary * multiplier
  end
end

class Manager < Employee
  def initialize(sub_employees)
    @sub_employees = sub_employees
  end

  def manager_bonus
    bonus = (total_salary_of_sub_employees) * multiplier
  end
end

david = Employee.new("David", "TA", "10,000")
callie = Employee.new("Callie", "TA", "1")
phoenix = Manager.new([david, callie])
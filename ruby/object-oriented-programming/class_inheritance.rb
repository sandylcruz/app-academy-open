class Employee
  attr_reader :name, :salary, :title
  attr_accessor :boss

  def initialize(name, title, salary)
    @name = name
    @title = title
    @salary = salary
  end

  def information
    puts "#{@name} is a #{@title} who makes #{@salary} per year"
  end

  def bonus(multiplier)
    bonus = @salary * multiplier
    puts "#{@name} makes $#{@salary} per year. With bonus, he now makes $#{bonus}"
  end
end

class Manager < Employee
  def initialize(name, title, salary, sub_employees)
    @name = name
    @title = title
    @salary = salary
    @sub_employees = sub_employees
  end

  def total_subsalary
    combined_salary = 0
    @sub_employees.each do |employee|
      combined_salary += employee.salary
    end
    combined_salary
  end

  def manager_bonus(multiplier)
    bonus = (total_subsalary + @salary.to_i) * multiplier 
    puts total_subsalary
    puts "#{@name} makes $#{@salary} per year. With bonus, he now makes $#{bonus}"
  end
end
david = Employee.new("David", "TA", 10)
shawna = Employee.new("Shawna", "TA", 20)
darren = Manager.new("Darren", "TA Manager", 30, [shawna, david])
ned = Manager.new("Callie", "Founder", 40, [darren, shawna, david])

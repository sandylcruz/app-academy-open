class Bootcamp
  
  def initialize(name, slogan, student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @teachers = []
    @students = []
    @grades = Hash.new { |h, k| h[k] = [] }
  end

  def name
    @name
  end

  def slogan
    @slogan
  end

  def teachers
    @teachers
  end

  def students
    @students
  end

  def hire(teacher)
    teachers << teacher
  end

  def enroll(student)
    student_capacity
  end

  def student_to_teacher_ratio
  end

  def add_grade(student, grade)
    
  end

  def num_grades(student)
  end

  def average_grade(student)
    average = 0

  end



end

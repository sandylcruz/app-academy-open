class Course < ApplicationRecord
  has_many(
    :enrollments,
    class_name: 'Enrollment',
    primary_key: :id,
    foreign_key: :course_id
  )

  has_many :enrolled_students, through: :enrollments, source: :student
end

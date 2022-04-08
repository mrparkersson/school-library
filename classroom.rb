class Classroom
  attr_accessor :label
  attr_reader :students

  def initialization(label)
    @label = label
    @students = []
  end

  def add_student(student)
    @students.push(student)
    student.classroom = self
  end
end
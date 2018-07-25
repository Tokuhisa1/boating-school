class Instructor
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def boating_tests
    BoatingTest.all.select do |test|
      test.instructor == self
    end
  end

  def fail_student(student_name, test_name)

    testObj = self.boating_tests.find do |test|
      studentObj = test.student
      "#{studentObj.first_name} #{studentObj.last_name}" == student_name && test.name == test_name
      # student.first_name == student_name.split[0] && student.last_name == student_name.split[1]
    end
    testObj.status = "failed"
    testObj
  end

  def pass_student(student_name, test_name)
    testObj = self.boating_tests.find do |test|
      studentObj = test.student
      "#{studentObj.first_name} #{studentObj.last_name}" == student_name && test.name == test_name
      # student.first_name == student_name.split[0] && student.last_name == student_name.split[1]
    end
    testObj.status = "passed"
    testObj
  end


end

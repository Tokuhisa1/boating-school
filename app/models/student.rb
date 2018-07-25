class Student
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.full_names
    self.all.map {|student| student.first_name + " " + student.last_name}
    #OR
    # self.all.map do |student|
    #   "#{student.first_name} #{student.last_name}"
    # end
  end

  def self.find_student(full_name)
    #full_name= "Bryan Cool"
    splitted = full_name.split(' ')
    @@all.find do |student|
      student.first_name == splitted[0] && student.last_name == splitted[1]

    end
  end

  def add_boating_test(instructor,test_name, test_status)
    BoatingTest.new(self, instructor, test_name, test_status)
  end

end

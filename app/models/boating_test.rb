class BoatingTest
  attr_accessor :student, :name, :instructor, :status
  @@all = []
  def initialize(student, instructor, name, status)
    @name = name
    @instructor = instructor
    @status = status
    @student = student
    @@all << self
  end

  def self.all
    @@all
  end
end

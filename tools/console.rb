require_relative '../config/environment'

bryan = Student.new("Bryan", "Cool")
bryan2 = Student.new("Brian", "Cool")
amirata = Student.new("Amirata", "Cooler")
jason = Student.new("Jason", "Coolest")
tyrell = Instructor.new("Tyrell")
winston = Instructor.new("Winston")
test1 = BoatingTest.new(bryan, tyrell, "Yikes", "failed")
BoatingTest.new(jason, tyrell, "Shboink", "failed")
amirata.add_boating_test(winston, "Joinks", "passed")
amirata.add_boating_test(winston, "Joinky", "passed")
amirata.add_boating_test(winston, "Jinkies", "passed")

binding.pry
puts "hi"

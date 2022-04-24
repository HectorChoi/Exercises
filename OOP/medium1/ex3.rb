# class Student
#   def initialize(name, year)
#     @name = name
#     @year = year
#   end
# end
#
# class Graduate < Student
#   def initialize(name, year, parking)
#     super(name, year)
#     @parking = parking
#   end
# end
#
# class Undergraduate < Student
#   def initialize(name, year)
#     super
#   end
# end

# Matthew Johnston's solution: why does @student_number work?
# is it because the class variable references an integer?
class StudentBody
  attr_reader :student_number

  @@total_students = 0

  def initialize
    @@total_students += 1
    @student_number = @@total_students
  end
end

class Student < StudentBody
  def initialize(name, year)
    @name = name
    @year = year
    super() # Here is where `super()` is invoked.
  end
end

class Graduate < Student
  def initialize(name, year, parking)
    super(name, year)
    @parking = parking
  end
end

class Undergraduate < Student
  def initialize(name, year)
    super
  end
end

hector = Student.new('hector', 2014)
p hector.student_number
bob = Student.new('bob', 2012)
p bob.student_number
puts "hector's student number is now: #{hector.student_number}"

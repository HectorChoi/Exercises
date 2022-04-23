require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'employee'

class EmployeeTest < Minitest::Test
  def test_experience
    employee = Employee.new
    assert_raises(NoExperienceError) { employee.hire }
  end
end

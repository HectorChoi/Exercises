class NoExperienceError < StandardError; end

class Employee
  def hire
    raise NoExperienceError 
  end
end

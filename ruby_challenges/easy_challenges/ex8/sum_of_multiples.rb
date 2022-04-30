=begin
input: an array or list, and target number
output: the sum of multiples less than the target number

rules:
  - use a default set of 3 and 5 if the set of numbers is not given
  - the target number is not included in the sum of multiples

mm:
  generate an array of all multiples of the set of numbers less than the target
  filter for unique values
  sum and return the sum

ds:
  an array

class method ::to
  call the constructor with default values
  call the to on the resulting object

constructor
instance method #to
=end

class SumOfMultiples
  def self.to(target)
    new(3, 5).to(target)
  end

  def initialize(*multiples)
    @multiples = multiples
  end

  def to(target)
    summands = []
    @multiples.each do |multiple|
      num = 1
      while multiple * num < target
        summands << (multiple * num)
        num += 1
      end
    end
    summands.uniq.sum
  end
end

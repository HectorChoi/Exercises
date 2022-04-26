=begin
input: an integer
output: a string if the integer is valid, StandardError otherwise

rules:
  - Aliquot sum is the sum of the positive divisors of a natural number
  excluding the number itself
  - `perfect` numbers have an Aliquot sum equal to the original number
  - `abundant` numbers have an Aliquot sum greater than the original number
  - `deficient` numbers have an Aliquot sum less than the original number

mm:
  - For a given input, raise an error if the input is invalid
  - otherwise, generate the Aliquot sum and use conditional logic to return the
  correct string

ds:
  - use exclusive range objects to generate the Aliquot sum

algorithm:
  - raise an StandardError if the integer argument is <= 0
  - initialize an empty `divisors` array
  - fill the `divisors` array
  - sum the divisors array and run logic based on the sum compared to the input
=end

# class PerfectNumber
#   def self.classify(number)
#     raise ArgumentError if number <= 0
#     return 'perfect' if number == 1
#     divisors = []
#     (1...number).each { |n| divisors << n if number % n == 0 }
#     aliquot_sum = divisors.sum
#     if aliquot_sum > number
#       'abundant'
#     elsif aliquot_sum < number
#       'deficient'
#     else
#       'perfect'
#     end
#   end
# end

=begin
PEDAC
P: For our program, the details we need to keep in mind are as follows:
  - we'll be given a number and we need to determine whether it is abundant,
  perfect, or deficient.
  - Perfect: Sum of factors = number
  - Abundant: Sum of factors > number
  - Deficient: Sum of factors < number
  - Factors are the numbers less than the input number that can be evenly
  divided into it. For example, the number 6 can be evenly divided by 1, 2, 3.

E: From the test cases shown above, we can see that we need to create a
PerfectNumber class. The class should have 1 method:
  - it accepts a number as an argument and returns the appropriate string based
  on its classification: "perfect", "abundant", or "deficient"
  - we can also see that we need to throw an error when the input to the method
  is a negative number.

DS:
  - In addition to working with numbers, it may also be helpful to use a
  collection that can hold a range. This could prove useful in finding all the
  divisors of a given number.

Algorithm:
  Method: classify
    - throw error if the argument is less than 1
    - Find the sum of all factors of argument (helper method)
    - if the sum is equal to argument, return "perfect"
    - if the sum is greater than argument, return "abundant"
    - if the sum is less than argument, return "deficient"
  Helper Method: determine sum of factors
    - initialize sum to 0
    - iterate over numbers from 1 up to 1 less than the argument
      - if the number is a divisor of the argument, add number to sum
    - return sum
=end

class PerfectNumber
  def self.classify(number)
    raise StandardError, 'invalid input' if number < 1
    sum = sum_of_factors(number)
    if sum == number
      "perfect"
    elsif sum > number
      "abundant"
    else
      "deficient"
    end
  end

  class << self
    private

    def sum_of_factors(number)
      sum = 0
      (1...number).each { |n| sum += n if number % n == 0 }
      sum
    end
  end
end

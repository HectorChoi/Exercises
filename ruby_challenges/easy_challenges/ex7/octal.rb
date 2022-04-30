require 'bundler/setup'
=begin
input: string integers (octal number)
output: integer (decimal version of octal number)

rules:
  - The rightmost digit gets multiplied by 8**0 = 1
  - The next digit gets multiplied by 8**1 = 8
  - The digit after that gets multiplied by 8**2 = 64
  - The digit after that gets multiplied by 8**3 = 512
  - So on, so forth...
  - The nth digit gets multiplied by 8**n-1.
  - All of these values are then summed.
  - The octal digits can't include 8 or 9 (base 8)
  - Leading 0's are ok
  - non-digit characters in input string should return 0

mm:
  - check to see if input is valid; if it is not (helper method), return 0
  - otherwise, break the input string into characters, and map that array of
  characters to products of powers of 8
  - sum the products and return the value

ds:
  use an array of characters / products to sum and return the appropriate value

algorithm:
  initialize(input):
  - save the input as @value

  valid?(input):
  - use a ternary operator re: whether the input matches non 0-7 characters to
  return false or true respectively

  to_decimal:
  - if the value is not valid, return 0
  - use an array of characters of the value and map each character to its
  integer equivalent
  - map the array of integers to an array of products of powers of 8
  - return the sum of the array of products
=end

# class Octal
#   def initialize(input)
#     @value = input
#   end

#   def to_decimal
#     return 0 unless valid?(@value)
#     digits = @value.chars.map(&:to_i)
#     digits.reverse.map.with_index do |digit, index|
#       digit * (8**index)
#     end.sum
#   end

#   private

#   def valid?(input)
#     input.match?(/[^0-7]/) ? false : true
#   end
# end

=begin
Launch School solution:
Problem:
  For our program, the details we need to keep in mind are as follows:
  - The way to convert octal numbers to decimal numbers is to use base-8 in
  multiplication.
  - Going from right-to-left, we multiply each digit of the number by 8 raised
  to a certain power.
  - For the first digit (from the right), the power is 0. For the second digit,
  the power is 1. This continues until we multiply each digit from the number.
  - Valid octal numbers only include digits 0-7.

Examples/Test Cases:
  From the test cases shown above, we can see that we need to create an Octal
class. The class should have 2 methods as follows:
  - A constructor that accepts a string as an argument that represents an octal
  number.
  - a method that converts the argument into decimal and returns it as a number.
    - We should return 0 if the argument has invalid characters such as letters
    or the digits 8 or 9.

Data Structures:
  From the test cases, we can see that we're dealing with numbers and strings.
We may want to use a collection (such as an array) for helpful built-in methods.

Hints/Questions:
  - The method that performs the conversion to decimal is also responsible for
  validating the input.
  - The method should iterate through the number's digits from right-to-left
  and compute each digit as a power of base 8.

Algorithm:
  constructor
  - Accepts a string as an argument that represents an octal number.

  to_decimal
  - If any character of the string being converted is not 0, 1, ... 7, return 0
  - Set a starting sum to 0
  - Reverse the digits
  - Iterate over digits one-by-one.
    - For the first digit, multiply it by 8**0, then add it to sum.
    - For the second digit, multiply it by 8**1, then add it to sum.
    - Keep multiplying and adding to sum until all digits are processed.
  - Return the sum.
=end

class Octal
  attr_reader :number

  def initialize(str)
    @number = str
  end

  def to_decimal
    return 0 unless valid_octal?(number)

    arr_digits = number.to_i.digits

    new_number = 0
    arr_digits.each_with_index do |num, exponent|
      new_number += (num * (8**exponent))
    end

    new_number
  end

  private

  def valid_octal?(num)
    num.chars.all? { |n| n =~ /[0-7]/ }
  end
end

=begin
input: an integer
output: a string

rules:
  - a smaller number put in front of a larger number indicates subtraction
  - four is too many - the idea is that instead of writing out four I's,
    we write out IV
  - We don't have to worry about numbers higher than 3,000
  - start with left most digit and skip any digit with a value of zero

mm:
  - start with the left most digit
  - work with an array of characters and transform each digit into the
    corresponding number using index and size of the array
  - use logic to transform each number e.g. 1000 into the corresponding
    roman numerals, and append them to a initially empty result string
  - iterate over the array of characters and continue to append

examples / test cases:
  - 1024 = 'MXXIV'

data structures:
  - an array of characters

algorithm:
  helper method: arabic -> array of numbers
  helper method: number(e.g. 1000) -> roman numeral
    - iterate over a constant array
=end

# class RomanNumeral
#   NUMERALS = { 1000 => 'M',
#                900 => 'CM',
#                500 => 'D',
#                400 => 'CD',
#                100 => 'C',
#                90 => 'XC',
#                50 => 'L',
#                40 => 'XL',
#                10 => 'X',
#                9 => 'IX',
#                5 => 'V',
#                4 => 'IV',
#                1 => 'I' }

#   def initialize(arabic)
#     @arabic = arabic
#   end

#   def to_roman
#     roman = ''
#     arabic_to_array.each do |num|
#       next if num.zero?
#       roman << number_to_numeral(num)
#     end
#     roman
#   end

#   def arabic_to_array
#     num_digits = @arabic.to_s.chars.size
#     arr = @arabic.to_s.chars.map(&:to_i)
#     arr.map.with_index do |digit, index|
#       digit * 10**(num_digits - index - 1)
#     end
#   end

#   def number_to_numeral(number)
#     numeral = ''
#     NUMERALS.each do |n, rn|
#       until n > number
#         number -= n
#         numeral << rn
#       end
#     end

#     numeral
#   end
# end

=begin
input: an integer
output: a roman numeral (string)

rules:
  - I stands for 1
  - V stands for 5
  - X stands for 10
  - L stands for 50
  - C stands for 100
  - D stands for 500
  - M stands for 1,000
  - we don't have to worry about numbers higher than 3,000
  - modern Roman numerals are written by expressing each digit of the number
    separately, starting with the left most digit and skipping any digit with
    a value of zero

examples / test cases:
  RomanNumeral class, with two methods as follows:
    constructor:
      - accepts a non-Roman integer number as an argument
      - from the test cases, constructor does not raise any errors
    to_roman:
      - returns the Roman numeral representation of the input number as a string

data structures:
  our input is an integer in our language of choice, and our output is a string.
  - we may want to use some type of collection to help us create the desired
  output since it can make iteration easier.
  - it might also be a good idea to have another collection hold some key
  conversions between numbers and Roman numerals
  - how would ascending or descending order impact its ease of use?

algorithm:
  constructor:
    - accept a number as an argument.
    - save it for later use.

  Roman Numerals Collection:
    - create a collection that links important Roman numeral strings to their
    numeric counterparts.
    - ensure this is in descending order.

  to_roman:
    - initialize a variable with an empty string to save the finished Roman
    conversion.
    - iterate over the Roman Numerals collection:
      - if the numeric value of the current Roman numeral is less than the value
      of the input number, add the Roman numerals to the string as many times as
      its value can fit. e.g. if the current Roman numeral is C and the input
      number is 367, then 3 C's are needed: CCC
      - subtract the numeric value of the added Roman numerals from the current
      input value, and use the new input value in subsequent iterations. For
      instance, since we added CCC to the string above, we must subtract 300
      from 367, leaving us with a new input number of 67.

    - return the result string.
=end

require 'bundler/setup'

class RomanNumeral
  attr_accessor :number

  ROMAN_NUMERALS = {
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
  }

  def initialize(number)
    @number = number
  end

  def to_roman
    roman_version = ''
    to_convert = number

    ROMAN_NUMERALS.each do |key, value|
      multiplier, remainder = to_convert.divmod(value)
      if multiplier > 0
        roman_version += (key * multiplier)
      end
      to_convert = remainder
    end
    roman_version
  end
end

=begin
A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. Return an error message if there is no next featured number.
=end

=begin
input: integer
output: integer (or error message)

rules:
- return the next featured number that is greater than the argument if it exists
- if it does not exist, return an error message
- a featured number is a number that is ODD, a MULTIPLE of 7, and WHOSE DIGITS OCCUR EXACTLY ONCE EACH

mm:
have helper methods to check for featured number criteria (e.g. odd? works, make a multiple_seven?, digits_once? methods)
brute force check from input + 1 up to 10 billion (impossible to satisfy digits_once?) for the next biggest featured number
return the next number that is a featured number in the above range object

ds:
string representations of integers and arrays of characters
Range object

algorithm:
helper methods for verifying whether something is a featured number:
  is_featured? contains truthiness check for each of the following:
    odd?
    multiple_seven?
    digits_once?(`num`)
      initialize a constant array with string representations of each digit, `DIGITS`
      initialize `num_chars` = the array of characters of the string representation of the argument `num`
      iterate over DIGITS with param `digit`
        return true if the count of each `digit` is <= 1 within `num_chars`
        return false otherwise

iterate over the numbers in (input + 1 to 10_000_000_000) with parameter `num`
  check if `num` is_featured?
    if so, return `num`

return an error message

=end

DIGITS = ('0'..'9').to_a


def featured(input)
  (input+1..10_000_000_000).each do |num|
    return num if is_featured?(num)
  end
  "There is no possible number that fulfills those requirements"
end

def is_featured?(num)
  num.odd? && multiple_seven?(num) && digits_once?(num)
end

def multiple_seven?(num)
  num % 7 == 0
end

def digits_once?(num)
  num_chars = num.to_s.chars
  DIGITS.each do |digit|
    return false if num_chars.count(digit) > 1
  end
  true
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

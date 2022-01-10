# Write a method that takes a positive integer or zero, and converts it
# to a string representation.

INTEGERS = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', +\
6 => '6', 7 => '7', 8 => '8', 9 => '9' }

# algorithm:
# take the divmod
# add the mod to the string
# loop until the div is 0

# first pass
# def integer_to_string(integer)
#   div, mod = integer.divmod(10)
#   int_str = INTEGERS[mod]
#   loop do
#     div, mod = div.divmod(10)
#     int_str << INTEGERS[mod]
#     break if div == 0
#   end
#   int_str.reverse
# end

# solution
def integer_to_string(number)
  string = ""
  loop do
    number, remainder = number.divmod(10)
    string.prepend(INTEGERS[remainder])
    break if number == 0
  end
  string
end

p integer_to_string(125)

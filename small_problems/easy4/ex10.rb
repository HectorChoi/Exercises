INTEGERS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
def integer_to_string(number)
  string = ""
  loop do
    number, remainder = number.divmod(10)
    string.prepend(INTEGERS[remainder])
    break if number == 0
  end
  string
end


# write a method that takes an integer, and converts it to a string
# representation.

# add the ability to represent negative numbers as well.

# algorithm:
# if the integer is less than 0
#   integer to string the integer * -1, and prepend a minus sign
# if the integer is greater than 0
#   integer to string the integer, and prepend a plus sign
# else
#   integer to string (0)

def signed_integer_to_string(signed_int)
  if signed_int < 0
    integer_to_string(-signed_int).prepend('-')
  elsif signed_int > 0
    integer_to_string(signed_int).prepend('+')
  else
    integer_to_string(signed_int)
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'

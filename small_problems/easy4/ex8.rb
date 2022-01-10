INTEGERS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, +\
'6' => 6, '7' => 7, '8' => 8, '9' => 9 }

def string_to_integer(integer_string)
  int_arr = integer_string.chars.map { |int_str| INTEGERS[int_str] }
  integer = 0
  int_arr.each_with_index do |int, index|
    integer += int * (10**(int_arr.size - index - 1))
  end
  integer
end

p string_to_integer('4321')

# the string may have a leading + or - sign; if the first character is a +,
# your method should return a positive number; if it is a -, negative; if none,
# return a positive number.
# may assume the string will always contain a valid number.

# algo:
# if the first character is +, run string_to_integer on second character onward
# if the first character is -, run string_to_integer on second character onward
# and then multiply by -1
# otherwise, just run string_to_integer

# first pass
# def string_to_signed_integer(signed_int_string)
#   if signed_int_string[0] == '+'
#     string_to_integer(signed_int_string[1, signed_int_string.size - 1])
#   elsif signed_int_string[0] == '-'
#     -1 * string_to_integer(signed_int_string[1, signed_int_string.size - 1])
#   else
#     string_to_integer(signed_int_string)
#   end
# end

# provided solution
# def string_to_signed_integer(string)
#   case string[0]
#   when '-' then -string_to_integer(string[1..-1])
#   when '+' then string_to_integer(string[1..-1])
#   else          string_to_integer(string)
#   end
# end

def string_to_signed_integer(string)
  sign = '+'
  sign = string.slice!(0) if ['+', '-'].include?(string[0])
  value = string_to_integer(string)
  sign == '+' ? value : -value
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

# alternatively, could pass an operator to string_to_integer based on sign
# to -= for negative, += for + or no leading character
# but sounds more complicated

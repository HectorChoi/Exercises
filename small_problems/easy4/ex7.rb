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

# write a method that takes one argument, a positive integer,
# and returns a list of the digits in the number.

def digit_list(number)
  digit_array = []
  dividend = number # assumed positive i.e. nonzero

  until dividend == 0
    digit_array << dividend % 10
    dividend = dividend / 10
  end
  digit_array.reverse
end

p digit_list(12345)

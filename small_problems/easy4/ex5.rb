# initialize empty multiples array
# for num in 1..input_num
#   add num if it is divisible by 3 or 5
# sum elements of multiples and return it

def multisum(input_num)
  multiples = []
  for num in 1..input_num
    multiples << num if num % 3 == 0 || num % 5 == 0
  end
  multiples.inject(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

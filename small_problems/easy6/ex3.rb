# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...)
# such that the first 2 numbers are 1 by definition, and each subsequent number
# is the sum of the two previous numbers. This series appears throughout the
# natural world.

# Computationally, the Fibonacci series is a very simple series, but the
# results grow at an incredibly rapid rate. For example, the 100th Fibonacci
# number is 354,224,848,179,261,915,075 -- that's enormous, especially
# considering that it takes 6 iterations before it generates the first 2
# digit number.

# Write a method that calculates and returns the index of the first Fibonacci
# number that has the number of digits specified as an argument.
# (The first Fibonacci number has index 1.)

# first pass:
# create a fibonacci array
# until the

def find_fibonacci_index_by_length(digits)
  fib_index = nil
  fib = [1, 1]
  until fib_index do
    fib << fib[-1] + fib[-2]
    fib_index = fib.size if fib[-1].to_s.size == digits
  end
  fib_index
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847

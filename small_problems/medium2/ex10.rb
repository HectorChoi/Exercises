=begin
Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.
=end

=begin
input: integer `n`
output: integer

rules:
- return the difference between the square of the sum of the first `n` positive integers and the sum of the squares of the first `n` positive integers

ds:
an array of the first `n` positive integers

algorithm:
initialize an array of the first `n` positive integers, save as `n_arr`
calculate the square of the sum

transform n_arr to an array of the first `n` integers squared, save as `n_squares`
sum n_squares

take the difference and return it
=end

def sum_square_difference(n)
  n_arr = (1..n).to_a
  n_squares = n_arr.map { |int| int**2 }
  n_arr.sum**2 - n_squares.sum
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150

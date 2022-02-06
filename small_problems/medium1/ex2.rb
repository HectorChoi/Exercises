# Rotation (part 2)
def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

=begin
input: 2 integers, `integer` and `n`
output: integer

rules:
- rotate the last `n` digits of `integer` and return as output
- may use the rotate_array method from the previous exercise
- may assume `n` is always a positive integer

mm:
take the string representation of `integer` and split it into characters
split the array into the first size - n characters and n characters
rotate the last `n` characters
put it back together and convert to integer

algo:
initialize characters array = characters of string repr. of integer
concatenate the first characters.size - n characters with the rotated last `n`
characters of the array to form a result array
join and convert result back into an integer to return
=end

def rotate_rightmost_digits(integer, n)
  characters = integer.to_s.chars
  result = characters[0...-n] + rotate_array(characters[-n..-1])
  result.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

# Rotation (part 1)

=begin
input: array
output: array

rules:
- output array should be equal in value to input array with its first element
moved to the end of the array
- the original array should not be modified.

mm:
initialize a new empty array `result`.
if input array is size 1 or 0, result = input array
otherwise, add the index 1 element, index 2, ... index size - 1, index 0

algorithm:
initialize `result` empty array
if `input` array is size 1 or 0, result = input array
otherwise, loop from index 1 to (input.size - 1) with parameter `index`
  append input[index] to result
append input[0] to result
return result
=end

def rotate_array(input)
  result = []
  if input.size == 0 || input.size == 1
    result = input
  else
    1.upto(input.size - 1) do |index|
      result << input[index]
    end
    result << input[0]
  end
  result
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

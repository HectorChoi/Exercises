=begin
input: Array
output: a new Array that contains the return values produced by the block for each element of the original Array

rules:
  - if the Array is empty, map should return an empty Array, regardless of how the block is defined
  - you may use #each, #each_with_object, #each_with_index, #inject, loop, for, while, or until
  - no other methods that iterate through an Array or any other collection are allowed

mm:
create and return a new array that we populate as we iterate over the array (each_with_object)

=end

def map(arr)
  arr.each_with_object([]) do |ele, new_arr|
    new_arr << yield(ele)
  end
end

p map([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
p map([]) { |value| true } == []
p map(['a', 'b', 'c', 'd']) { |value| false } == [false, false, false, false]
p map(['a', 'b', 'c', 'd']) { |value| value.upcase } == ['A', 'B', 'C', 'D']
p map([1, 3, 4]) { |value| (1..value).to_a } == [[1], [1, 2, 3], [1, 2, 3, 4]]

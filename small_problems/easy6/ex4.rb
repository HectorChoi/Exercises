# Write a method that takes an Array as an argument, and reverses its elements
# in place; that is, mutate the Array passed into this method.
# The return value should be the same Array object.
# You may not use Array#reverse or Array#reverse!.

# first pass: using clone
# algorithm:
# create a shallo wcopy
# use indexed assignment to mutate the argument array
# return the now mutated argument array

# def reverse!(list)
#   copy = list.clone
#   copy.each_with_index do |element, index|
#     list[(-1 * index) - 1] = element
#   end
#   list
# end

# solution concept: pairwise (parallel) assignment: Ruby idiom for exchanging
# two values without requiring an intermediate variable

# algorithm:
# left_index, right_index point to beginning and end of array
# while left_index is < halfway of the array size,
#   parallel assignment of left index and right index element to the other
#   increment left index up
#   increment right index down (negative)
# return array

def reverse!(array)
  left_index, right_index = 0, -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end


list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true

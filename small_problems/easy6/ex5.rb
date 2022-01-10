# Write a method that takes an Array, and returns a new Array with the elements
# of the original list in reverse order. Do not modify the original list.

# algorithm:
# create a shallow copy of the array
# mutate the shallow copy

# algorithm2:
# initialize an empty array
# prepend values

# first pass algo1
# def reverse(array)
#   copy = array.dup
#   left, right = 0, -1
#
#   while left < copy.size / 2
#     copy[left], copy[right] = copy[right], copy[left]
#     left += 1
#     right -= 1
#   end
#
#   copy
# end

# first pass algo2

# def reverse(array)
#   new_array = []
#   array.each do |element|
#     new_array.prepend(element)
#   end
#   new_array
# end

# def reverse(array)
#   array.each_with_object([]) {|element, new_array| new_array.prepend(element) }
# end

def reverse(array)
  array.inject([]) {|new_array, element| new_array.prepend(element)}
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true

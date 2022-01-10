# Write a method that takes two Arrays as arguments, and returns an Array that
# contains all of the values from the argument Arrays. There should be no
# duplication of values in the returned Array, even if there are duplicates in
# the original Arrays.

# algorithm1:
# merge the two arrays
# filter to unique values only

# algorithm2:
# create a new array
# iterate over each of the argument arrays
#   add element of array to new array if it is not already in there
# return the new array

# def merge(arr1, arr2)
#   new_arr = []
#   arr1.each {|ele| new_arr << ele}
#   arr2.each {|ele| new_arr << ele}
#   new_arr.uniq!
# end

def merge(arr1, arr2)
  new_arr = []
  arr1.each {|ele| new_arr << ele if !new_arr.include?(ele)}
  arr2.each {|ele| new_arr << ele if !new_arr.include?(ele)}
  new_arr
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

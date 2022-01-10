# Write a method that takes an Array as an argument, and returns two Arrays
# (as a pair of nested Arrays) that contain the first half and second half of
# the original Array, respectively. If the original array contains an odd
# number of elements, the middle element should be placed in the first half Array.

# algorithm:
# create first, second arrays
# populate the first array with the first half (conditional odd size)
# populate the second array with the second half
# return nested first, second arrays

def halvsies(arr)
  arr.partition {|num| arr.index(num) < arr.size / 2.0}
end

# def halvsies(arr)
#   first, second = [], []
#   arr.each_with_index do |num, index|
#     # if arr.size.odd?
#     #   first << num if index < arr.size / 2
#     #   second << num if index > arr.size / 2
#     # else
#     #   first
#     # end
#     # binding.pry
#     first << num if index < arr.size / 2.0
#     second << num if index >= arr.size / 2.0
#   end
#   [first, second]
# end

# algo solution:
# use the .ceil method and slice method to literally solve the problem

def halvsies(arr)
  halfpoint = (arr.size / 2.0).ceil
  first = arr.slice(0, halfpoint)
  second = arr.slice(halfpoint, arr.size - halfpoint)
  [first, second]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

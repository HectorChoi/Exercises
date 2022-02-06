# algorithm:
# initialize total_sum = 0
# initialize running_sum = 0
# iterate over the array, with running_sum adding each new array element
# simultaneously, increment total_sum by running_sum

# def sum_of_sums(arr)
#   total_sum = 0
#   running_sum = 0
#   arr.each do |num|
#     running_sum += num
#     total_sum += running_sum
#   end
#   total_sum
# end

# algorithm 2:
# initialize total_sum = 0
# iterate over the array
# slicing and reducing the slices to be added to total sum
# return total_sum

def sum_of_sums(arr)
  total_sum = 0
  length = 1
  loop do
    total_sum += arr.slice(0, length).reduce(:+)
    length += 1
    break if length > arr.size
  end
  total_sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35

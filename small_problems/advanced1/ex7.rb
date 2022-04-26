=begin
input: two arrays (sorted)
output: a new array that contains all elements from both arguments in sorted
order

rules:
  - you may not provide any solution that requires you to sort the result array
  - you must build the result array one element at a time in the proper order
  - your solution should not mutate the input arrays

mm:
  - iterate over one of the arrays, while keeping track of the index of the
  other array
  - use some logic to concatenate each element of the other array while their
  corresponding values are less than the current value of the array you are
  iterating over, incrementing the index of the other array as you go
  - afterwards, concatenate the current value of the array you are iterating
  over
  - after finishing looping through the array you are iterating over, add the
  remaining elements of the other array to the end of the result array
=end

def merge(arr1, arr2)
  index2 = 0
  result = []

  arr1.each do |value|
    while index2 < arr2.size && arr2[index2] <= value
      result << arr2[index2]
      index2 += 1
    end
    result << value
  end
  result.concat(arr2[index2..-1])
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]

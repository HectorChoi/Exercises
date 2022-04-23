def zip(arr1, arr2)
  zipped = []
  arr1.each_index { |index| zipped << [arr1[index], arr2[index]] }
  zipped
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]

# algorithm:
# shift elements from each array until first array is empty

# non-mutating algorithm:
# indexed assignment 2n, 1+2n for arr1, arr2

# def interleave(arr1, arr2)
#   alternate = []
#   until arr1.empty?
#     alternate.push(arr1.shift).push(arr2.shift)
#   end
#   alternate
# end

# def interleave(arr1, arr2)
#   alternate = []
#   arr1.size.times do |n|
#     alternate[2*n] = arr1[n]
#     alternate[1+2*n] = arr2[n]
#   end
#   alternate
# end

# algo using #zip:
# zip the two arrays together
# flatten

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave([1,2,3], ['a', 'b', 'c'])

# return every other element of the array passed in as an argument
# e.g. 1st, 3rd, 5th element of the argument (index 0, 2, 4)

# algorithm1:
# create new empty array
# loop over argument array
#   append element to new array if its index is even
# return new array

def oddities(arr)
  odds = []
  arr.each_with_index do |element, index|
    odds << element if index.even?
  end
  odds
end

p oddities([2, 3, 4, 5, 6])

def oddities(arr)
  every_other_arr = []
  arr.each_with_index { |val, index| every_other_arr << val if index.even? }
  every_other_arr
end

# def oddities(arr) # only guaranteed to work if .index call works i.e. no repeats
#   arr.each_with_object([]) {|num, odd_arr| odd_arr << num if arr.index(num).even?}
# end

p oddities([2,3,4,5,6])

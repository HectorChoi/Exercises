# first pass
# def average(integers)
#   sum = 0
#   integers.each { |int| sum += int }
#   sum / integers.size
# end

def average(pos_int_array)
  sum = pos_int_array.inject(:+)
  sum / pos_int_array.size
end

puts average([1, 6])

puts average([1, 5, 87, 45, 8, 8])

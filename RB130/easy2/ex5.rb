=begin
mm: return a slice from the index that returns false to the end
=end

def drop_while(arr)
  # arr.each_with_index do |ele, index|
  #   next if yield(ele)
  #   return arr[index..-1]
  # end
  # []
  
  # better to use while loop - makes it obvious we want to stop prematurely
  index = 0
  while index < arr.size && yield(arr[index])
    index += 1
  end

  arr[index..-1]
end

p drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| true } == []
p drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
p drop_while([]) { |value| true } == []

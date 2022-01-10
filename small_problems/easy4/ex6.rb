def running_total(input_array)
  total = 0
  input_array.each_with_object([]) do |number, total_array|
    total += number
    total_array << total
  end
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

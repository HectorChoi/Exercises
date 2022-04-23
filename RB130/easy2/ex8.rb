=begin
input: array, block
output: element of the array for which the block's return value is largest

rules:
  - return the element for which the block returned the largest value
  - if the Array is empty, return nil
  - you may use #each, #each_with_object, #each_with_index, #inject, loop, for, while, or until
  - cannot use any other methods that iterate through an Array or collection

mm:
return nil if arr is empty
otherwise, set max_ele = arr.first
max_return = yield(max_ele)
iterate over the array, skipping unless the return value is greater than max_return
if it is greater, set max_ele = ele, max_return = the return value
after iteration, return max_ele
=end

def max_by(arr)
  return nil if arr.empty?
  max_ele = arr.first
  max_return = yield(max_ele)
  arr.each do |ele|
    current_return = yield(ele)
    next unless current_return > max_return
    max_ele = ele
    max_return = current_return
  end
  max_ele
end

p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil

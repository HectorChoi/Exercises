=begin
input: an array
output: boolean

rules:
  - if the block returns a value of true for exactly one element, then #one returns true.
  - Otherwise, #one returns false. 
  - in particular, #one will stop searching the collection the second time the block returns true
  - if the array is empty, one? should return false

mm:
  first, return false if array is empty
  if the array isn't empty, 
    use a one_true? variable and conditionals to lay out logic
=end
def one?(arr)
  return false if arr.empty?
  one_true = false
  arr.each do |ele|
    current = yield(ele)
    return false if one_true == true && current == true
    one_true = true if current == true
  end
  one_true
end

p one?([1, 3, 5, 6]) { |value| value.even? }    == true
p one?([1, 3, 5, 7]) { |value| value.odd? }     == false
p one?([2, 4, 6, 8]) { |value| value.even? }    == false
p one?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p one?([1, 3, 5, 7]) { |value| true }           == false
p one?([1, 3, 5, 7]) { |value| false }          == false
p one?([]) { |value| true }                     == false

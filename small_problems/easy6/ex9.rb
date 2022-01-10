# Write a method named include? that takes an Array and a search value as
# arguments. This method should return true if the search value is in the
# array, false if it is not. You may not use the Array#include? method in
# your solution.

# algorithm:
# iterate over the array and compare each iterand to the value
# return true if it is equal to a value
# return false at end

def include?(array, value)
  array.each do |ele|
    return true if ele == value
  end
  false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

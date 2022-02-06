# Triangle Sides

=begin
input: 3 integers, representing lengths of the sides of a triangle
output: symbol

rules:
- sum of the two shortest sides must be greater than length of the longest side
- all sides must have lengths greater than zero

mental model:
if sum of lengths of two shortest sides is greater than the length of the longest
side AND all sides have greater length than zero,
  return the appropriate symbol based on equivalences
otherwise, return invalid

ds:
an array of sorted lengths to determine longest and shortest sides

algorithm:
initialize `sorted` as the sorted array of input side lengths
helper method short_sum_longer:
  return whether sum of two shortest lengths of `sorted` is greater than the length
  of the longest side

helper method all_sides_greater_zero:
  return whether any side has length <= 0 in `sorted`

if short_sum_longer and all_sides_greater_zero return true,
  return the appropriate symbol based on equivalences
=end

def triangle(side1, side2, side3)
  sorted = [side1, side2, side3].sort
  if all_sides_greater_zero(sorted) && short_sum_longer(sorted)
    if side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side1 == side3 || side2 == side3
      :isosceles
    else
      :scalene
    end
  else
    :invalid
  end
end

def all_sides_greater_zero(arr)
  arr[0] > 0 && arr[1] > 0 && arr[2] > 0
end

def short_sum_longer(arr)
  arr[0] + arr[1] > arr[2]
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid

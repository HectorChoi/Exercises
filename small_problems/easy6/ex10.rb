# Write a method that takes a positive integer, n, as an argument, and displays
# a right triangle whose sides each have n stars. The hypotenuse of the triangle
# (the diagonal side in the images below) should have one end at the lower-left
# of the triangle, and the other end at the upper-right.

# algorithm:
# print out n spaces
# print out n-1 spaces and 1 star
# print out n-2 spaces and 2 stars
# ...
# print out 0 spaces and n stars

def triangle(num)
  (num + 1).times do |n|
    puts (' ' * (num - n)) + ('*' * n)
  end
end

triangle(9)

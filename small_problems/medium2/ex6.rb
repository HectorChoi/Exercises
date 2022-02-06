=begin
A triangle is classified as follows:

right One angle of the triangle is a right angle (90 degrees)
acute All 3 angles of the triangle are less than 90 degrees
obtuse One angle is greater than 90 degrees.
To be a valid triangle, the sum of the angles must be exactly 180 degrees,
and all angles must be greater than 0: if either of these conditions is not
satisfied, the triangle is invalid.

Write a method that takes the 3 angles of a triangle as arguments, and returns
a symbol :right, :acute, :obtuse, or :invalid depending on whether the triangle
is a right, acute, obtuse, or invalid triangle.

You may assume integer valued angles so you don't have to worry about
floating point errors. You may also assume that the arguments are specified in
degrees.
=end

=begin
input: three integers (angles of a triangle)
output: symbol

rules:
- to be a valid triangle, sum of the angles must be 180 degrees AND all angles
must be greater than 0
- right triangle: one angle is 90 degrees
- acute: all three angles is less than 90 degrees
- obtuse: One angle is greater than 90 degrees

ds:
array of angles to sort and sum

algorithm:
intialize `angles` array to contain all three angles
if any angle is less than or equal to zero or sum of angles is not 180
  return :invalid
otherwise, set biggest angle = `max`
  if `max` > 90 return obtuse
  if `max` == 90 return right
  else return acute
=end

def triangle(ang1, ang2, ang3)
  angles = [ang1, ang2, ang3]
  if (angles.any? { |angle| angle <= 0 }) || (angles.sum != 180)
    return :invalid
  else
    max = angles.max
    if max > 90
      return :obtuse
    elsif max == 90
      return :right
    else
      return :acute
    end
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid

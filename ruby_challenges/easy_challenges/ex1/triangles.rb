=begin
input: a new Triangle object with 3 side lengths
output: a Triangle object that functions as desired

rules:
  - the `kind` of triangle should be clear from the side lengths provided
  - to be a triangle at all, all sides must be length > 0, 
    and the sum of lengths of any two sides must be greater than
    the length of the third side.
  - equilateral triangles have 3 equal side lengths
  - isosceles triangles have two equal side lengths
  - scalene triangles have 3 unequal side lengths

mm:
  - the initialize method should catch whether a triangle is a triangle
  - use helper methods for initialize
  - the `kind` method should return a string based on side lengths

Examples / test cases:
  - the provided test class indicate that we need a Triangle class.
  - the class must have the following two methods:
    - a constructor that accepts three args representing three side lengths
      - an exception is raised in the constructor if any side length is 
        less than or equal to 0
      - an exception is raised if the side lengths taken together
        don't describe a valid triangle
    - a method `kind` that returns a string representing the type of triangle

Data structures:
  - We can see from the provided test cases that we are going to be using
    numbers to create a new triangle and to determine its validity and type
  - The return value is a string
  - Q: How to store side lengths? 
    - A: May be convenient to store in an array

Algorithm:
  `initialize` method:
    - create helper methods `greater_than_zero` and `valid_inequality`
    - as long as all sides are `greater_than_zero` and the sides pass
      `valid_inequality`, great
    - otherwise, raise an ArgumentError

  `kind` method:
    - have some logic that compares side lengths and returns the appropriate
      string of triangle kind
=end

# class Triangle
#   def initialize(side1, side2, side3)
#     @sides = [side1, side2, side3]
#     raise ArgumentError unless greater_than_zero && valid_inequality
#   end

#   def kind
#     if @sides[0] == @sides[1] && @sides[1] == @sides[2]
#       'equilateral'
#     elsif @sides[0] == @sides[1] || @sides[0] == @sides[2] || @sides[1] == @sides[2]
#       'isosceles'
#     else
#       'scalene'
#     end
#   end

#   private

#   def greater_than_zero
#     @sides.all?(&:positive?)
#   end

#   def valid_inequality
#     b1 = @sides[0] + @sides[1] > @sides[2]
#     b2 = @sides[0] + @sides[2] > @sides[1]
#     b3 = @sides[1] + @sides[2] > @sides[0]
#     b1 && b2 && b3
#   end
# end

require 'bundler/setup'

class Triangle
  attr_reader :sides

  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
    raise ArgumentError.new "Invalid triangle lengths" unless valid?
  end

  def kind
    if sides.uniq.size == 1
      'equilateral'
    elsif sides.uniq.size == 2
      'isosceles'
    else
      'scalene'
    end
  end

  private

  # rubocop: disable Metrics/AbcSize
  def valid?
    sides.min.positive? &&
      sides[0] + sides[1] > sides[2] &&
      sides[1] + sides[2] > sides[0] &&
      sides[0] + sides[2] > sides[1]
  end
  # rubocop: enable Metrics/AbcSize
end

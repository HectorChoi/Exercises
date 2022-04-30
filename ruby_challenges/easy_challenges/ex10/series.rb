=begin
Problem: 
input: String of digits
output: all the possible consecutive number series of a specified length
in that string

Examples:
"01234" has the following 3-digit series
012, 123, 234

rules:
if you ask for a 6-digit series from a 5-digit string, throw an error.

mm:
each_cons
=end

require 'bundler/setup'

class Series
  def initialize(digits_str)
    @digits = digits_str.chars.map(&:to_i)
  end

  def slices(size)
    raise ArgumentError if size > @digits.size
    series = []
    @digits.each_cons(size) { |sub_arr| series << sub_arr }
    series
  end
end

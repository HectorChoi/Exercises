# Unlucky Days

=begin
Write a method that returns the number of Friday the 13ths in the year given
by an argument. You may assume that the year is greater than 1752 (when the
United Kingdom adopted the modern Gregorian Calendar) and that it will remain
in use for the foreseeable future.
=end

=begin
input: integer (`year`, the Gregorian calendar year)
output: integer (number of Friday the 13ths in `year`)

rules:
- assume the year is greater than 1752
- assume the calendar will remain Gregorian

ds:
Date class and objects

algorithm:
initialize friday_13 = 0
for input `year`, iterate over all months (from 1..12), with param `month`
  check to see if the 13th of `month` is a friday
    if so, increment friday_13 by 1
return friday_13
=end

require 'date'

def friday_13th(year)
  friday_13 = 0
  (1..12).each do |month|
    date = Date.new(year, month, 13)
    friday_13 += 1 if date.friday?
  end
  friday_13
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

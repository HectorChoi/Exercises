# write a method that takes a floating point number that represents an angle
# between 0 and 360 degrees and returns a String that represents that angle
# in degrees, minutes, and seconds. You should use a degree symbol to represent
# degrees, a single quote to represent minutes, and a double quote to represent
# seconds. A degree has 60 minutes, while a minute has 60 seconds.

DEGREE = "\xC2\xB0"

def dms(angle)
  degrees = angle.to_i
  minutes = ((angle - degrees) * 60).to_i
  minutes_str = minutes.to_s
  minutes_str.prepend('0') if minutes_str.length == 1
  seconds = ((((angle - degrees) * 60) - minutes) * 60).to_i
  seconds_str = seconds.to_s
  seconds_str.prepend('0') if seconds_str.length == 1
  "#{degrees}#{DEGREE}#{minutes_str}'#{seconds_str}\""
end

puts dms(254.6)

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

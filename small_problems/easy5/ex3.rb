# As seen in the previous exercise, the time of day can be represented as
# the number of minutes before or after midnight. If the number of minutes
# is positive, the time is after midnight. If the number of minutes is
# negative, the time is before midnight.
#
# Write two methods that each take a time of day in 24 hour format, and return
# the number of minutes before and after midnight, respectively. Both methods
# should return a value in the range 0..1439.
#
# You may not use ruby's Date and Time methods.

# algorithm:
# take time_str and parse it into hours and minutes
# modulo hours by 24 to account for edge case of 24:00
# calculate the hours and minutes into minutes after midnight
# before_midnight = 1440 - after_midnight modulo 1440

def after_midnight(time_str)
  hours, minutes = time_str.split(":").map(&:to_i)
  hours = hours % 24
  total_minutes = 60 * hours + minutes
  # total_minutes % 1440 # alternative way to deal with edge case
end

def before_midnight(time_str)
  (1440 - after_midnight(time_str)) % 1440
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

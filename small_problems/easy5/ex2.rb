# The time of day can be represented as the number of minutes before or after
# midnight. If the number of minutes is positive, the time is after midnight.
# If the number of minutes is negative, the time is before midnight.
#
# Write a method that takes a time using this minute-based format and returns
# the time of day in 24 hour format (hh:mm). Your method should work with any
# integer input.
#
# You may not use ruby's Date and Time classes.

# algorithm:
# take the input minutes and divmod it into hours and minutes by 60
# modulo the hours by 24 to get the number of hours from 00:00
# return the string representation of the hour, minute count formatted correctly

def time_of_day(input_minutes)
  hours, minutes_60 = input_minutes.divmod(60)
  hours_str = (hours % 24).to_s
  minutes_str = minutes_60.to_s
  hours_str.prepend('0') if hours_str.size == 1
  minutes_str.prepend('0') if minutes_str.size == 1
  hours_str + ":" + minutes_str
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

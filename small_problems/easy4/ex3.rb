# D: conditionals based on integer division
# A: nest the if conditionals outside in
# 1) if the year is evenly divisible by 4 & ! divisible by 100, return true
# 2) elsif the year is evenly divisible by 4 and by 100 but not 400, return false
# 3) elsif the year is divisible by 4, 100, and 400, return true
# 4) else (not divisible by 4), return false

def leap_year?(year)
  if year % 4 == 0 && year % 100 != 0
    return true
  elsif year % 100 == 0 && year % 400 != 0
    return false
  elsif year % 400 == 0
    return true
  else
    return false
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true

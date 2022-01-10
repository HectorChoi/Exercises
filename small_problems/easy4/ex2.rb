# obtain century by dividing by 100 and conditionally adding 1 depending on
# remainder of modulo 100
# create 'last digit of century' variable
# century_suffix = conditional on last (two) digit(s) of century variable
# return century_string = century_string + ending

def century(year)
  century = (year % 100 > 0) ? (year / 100) + 1 : (year / 100)
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  suffix = case century % 10
  when 1
    'st'
  when 2
    'nd'
  when 3
    'rd'
  else
    'th'
  end
  suffix
end

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

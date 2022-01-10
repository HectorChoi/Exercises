# write a method that takes a year as input and returns the century
# the return value should be a string that begins with the century number,
# and ends with st, nd, rd, or th as appropriate for that number.

# new centuries begin in years that end with 01.

# algorithm:
# get the century number via division and modulo operations
# depending on century number, choose century suffix
# return the century string representation and suffix concatenated

# subalgorithms:
# century_suffix(century)
# return 'th' if century % 100 is 11, 12, or 13
# case century % 10
# if ends in 1, return 'st'
# if ends in 2, return 'nd'
# if ends in 3, return 'rd'
# else return 'th'

def century(year)
  century, rem = year.divmod(100)
  century += 1 unless rem == 0
  suffix = century_suffix(century)
  century.to_s + suffix
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  case century % 10
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

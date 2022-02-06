# Lettercase Percentage Ratio

=begin
input: string
output: hash

rules:
- hash contains 3 entries:
  - one represents the percentage of characters in the string that are lowercase letters
  - one represents the percentage of characters that are uppercase letters
  - one represents the percentage of characters that are neither
- string will always contain at least one character.

ds:
hash

algorithm:
initialize `length` variable to the size of the input string in float
initialize `lowercase` variable to the count of lowercase letters
initialize `uppercase` variable to the count of uppercase letters
initialize `other` variable to the count of neither upper or lowercase letters
create and return a hash with appropriate ratios rounded to the nearest tenth
=end

def letter_percentages(str)
  length = str.size.to_f
  lowercase = str.count('a-z')
  uppercase = str.count('A-Z')
  other = str.count('^A-Za-z')
  hsh = {lowercase: (lowercase / length) * 100, uppercase: (uppercase / length) * 100, neither: (other / length) * 100}
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

# write a method that takes an array of strings, and returns an array of
# the same string values, except with the vowels (a e i o u) removed.

# algorithm:
# iterate over the strings in str_array
#   delete the vowels in each str
# return the array of deleted strings

def remove_vowels(str_array)
  str_array.map do |str|
    str.delete('aeiouAEIOU')
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

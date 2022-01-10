# ddaaiillyy ddoouubbllee
# Write a method that takes a string argument and returns a new string that
# contains the value of the original string with all consecutive duplicate
# characters collapsed into a single character.
#
# You may not use String#squeeze or String#squeeze!.

def crunch(string)
  new_str_chars = []
  chars = string.chars
  chars.each_with_index do |char, index|
    if index == 0
      new_str_chars << char
    elsif char != chars[index - 1]
      new_str_chars << char
    else
      next
    end
  end
  new_str_chars.join('')
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

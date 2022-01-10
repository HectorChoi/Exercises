# determine the long and short of it
# new string the result of concatenating
# return concatenated string

def short_long_short(str1, str2)
  short = ""
  long = ""
  concat = ""
  if str1.length > str2.length
    short, long = str2, str1
  else
    short, long = str1, str2
  end

  concat += (short + long + short)
  concat
end

p short_long_short('abc', 'defgh')
p short_long_short('abcde', 'fgh')
p short_long_short('', 'xyz')

# Double Char (part 1)

# algorithm:
# initialize empty result string
# for char in string
#   add char to result twice
# return result

def repeater(str)
  result = ''
  str.chars.each do |char|
    2.times { result << char }
  end
  result
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

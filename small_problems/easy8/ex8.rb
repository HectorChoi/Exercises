# Double char (part 2)

def double_consonants(str)
  result = ''
  str.each_char do |char|
    result << char
    result << char if char.match(/[b-df-hj-np-tv-z]/i)
  end
  result
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""

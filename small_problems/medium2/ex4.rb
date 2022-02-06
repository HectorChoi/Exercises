# Matching Parentheses?

=begin
input: string
output: boolean

rules:
- return true if all parentheses in the string are properly balanced
- return false otherwise
- properly balanced pairs start with '(' and end with ')'

ds:
array (of characters)

algorithm:
split string into an array of characters, `chars`
initialize a counter = 0
iterate over chars
  if a character is '(', add 1 to the counter
  if a character is ')', minus 1 from the counter
  break if counter is ever < 0
return whether counter is equal to 0 (boolean)
=end

def balanced?(str)
  chars = str.chars
  counter = 0
  chars.each do |char|
    if char == '('
      counter += 1
    elsif char == ')'
      counter -= 1
    end
    break if counter < 0
  end

  counter == 0
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false

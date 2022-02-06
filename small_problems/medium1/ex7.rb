# Word to Digit

=begin
input: string
output: string

rules:
- in output string, any sequence of the words 'zero', 'one', ... converted to a
string of digits

algorithm:
define a constant hash of number words and their string integer equivalent
iterate over hash keys (number word)
  substitute any instance of the number word with the corresponding value (string integer equivalent)
return mutated string

=end

NUMBER_WORDS = {'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3',
'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8',
'nine' => '9'}

def word_to_digit(str)
  NUMBER_WORDS.each do |key, value|
    str.gsub!(/\b#{key}\b/, value)
  end
  str
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

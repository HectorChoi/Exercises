def leading_substrings(str)
  result = []
  0.upto(str.size - 1) do |index|
    result << str[0..index]
  end
  result
end

# All Substrings

def substrings(str)
  substrings = []
  0.upto(str.size - 1) do |start_index|
    current_substring = str[start_index..-1]
    substrings.concat(leading_substrings(current_substring))
  end
  substrings
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

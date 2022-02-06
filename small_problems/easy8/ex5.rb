# Palindromic Substrings

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

def palindromes(str)
  substrings(str).select do |substring|
    substring.size >= 2 && substring == substring.reverse
  end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

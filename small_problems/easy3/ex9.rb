def palindrome?(str)
  str == str.reverse
end

def real_palindrome?(str)
  cleaned = clean_str(str)
  palindrome?(cleaned)
end

def clean_str(str)
  str.downcase.delete('^a-z0-9')
end

p real_palindrome?("Madam, I'm Adam")

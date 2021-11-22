# Write a method that takes two arguments, a string and a positive integer,
# and prints the string as many times as the integer indicates.

# e.g. repeat('Hello', 3) should output
# Hello
# Hello
# Hello

def repeat(string, number)
  number.times { puts string }
end

repeat('Hello', 3)

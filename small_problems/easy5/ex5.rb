# Given a string that consists of some words (all lowercased) and an assortment
#  of non-alphabetic characters, write a method that returns that string with
#  all of the non-alphabetic characters replaced by spaces. If one or more
#  non-alphabetic characters occur in a row, you should only have one space in
#  the result (the result should never have consecutive spaces).

# algorithm1:
# initialize an empty string
# for character in input_string, add it if it is alphabetic
# if it is not alphabetic, add a space unless the previous character is too

ALPH = ('a'..'z').to_a

def cleanup(input_string)
  cleaned_string = ""
  input_string.each_char do |char|
    if ALPH.include?(char)
      cleaned_string << char
    else
      cleaned_string << ' ' unless cleaned_string[-1] == ' '
    end
  end
  cleaned_string
end

p cleanup("---what's my +*& line?") == ' what s my line '

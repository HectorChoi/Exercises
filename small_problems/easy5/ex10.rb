# Bannerizer
# Write a method that will take a short line of text, and print it within a box.

# You may assume that the input will always fit in your terminal window.

def print_in_box(str)
  length = str.length
  print_top_lines(length)
  print_line(str)
  print_bot_lines(length)
end

def print_line(str)
  puts "| " + str + " |"
end

def print_top_lines(length)
  puts "+-" + ("-" * length) + "-+"
  puts "| " + (" " * length) + " |"
end

def print_bot_lines(length)
  puts "| " + (" " * length) + " |"
  puts "+-" + ("-" * length) + "-+"
end

print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

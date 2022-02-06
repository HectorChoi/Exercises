# The End is Near But Not Here

# algorithm
# split str
# return the -2 index element

def penultimate(str)
  str.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

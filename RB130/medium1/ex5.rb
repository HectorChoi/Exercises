items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

# gather(items) do |*produce, wheat|
#   puts produce.join(', ')
#   puts wheat
# end

# gather(items) do |item1, *items2, item3|
#   puts item1
#   puts items2.join(', ')
#   puts item3
# end

gather(items) do |item1, *items2|
  puts item1
  puts items2.join(', ')
end

# gather(items) do |item1, item2, item3, item4|
#   puts [item1, item2, item3].join(', ') + ", and #{item4}"
# end

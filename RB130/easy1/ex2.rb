def compute(arg)
  if block_given?
    yield(arg)
  else
    "Does not compute."
  end
end

p compute(2) { |p| p + 5 + 3 } == 10
p compute('c') { 'a' + 'b' } == 'ab'
p compute(nil) == 'Does not compute.'

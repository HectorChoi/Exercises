def fibonacci_last(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, (first + last)%10]
  end

  last
end


p fibonacci_last(123456789)

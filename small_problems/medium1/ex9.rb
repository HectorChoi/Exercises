# Fibonacci Numbers (Procedural)

=begin
input: integer `n`
output: integer

rules:
- rewrite fibonacci method so that it computes results without recursion

algorithm:
from 1 up to `n`, generate the fibonacci numbers in an array
return the last element of the array
=end

def fibonacci(n)
  fib_seq = []
  fib_num = 1
  1.upto(n) do |index|
    if index <= 2
      fib_num = 1
    else
      fib_num = fib_seq[index - 2] + fib_seq[index - 3]
    end
    fib_seq << fib_num
  end
  fib_seq.last
end

p fibonacci(100_001)

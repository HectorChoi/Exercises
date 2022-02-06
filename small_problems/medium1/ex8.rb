# Fibonacci Numbers (Recursion)

=begin
input: integer `n`
output: integer

rules:
- fib(1) = 1
- fib(2) = 1
- fib(n) = fib(n-1) + fib(n-2) for n > 2

algorithm:
return 1 if n = 1 or n = 2
otherwise, return fib(n-1) + fib(n-2)
=end

def fibonacci(n)
  if n == 1 || n == 2
    1
  else
    fibonacci(n-1) + fibonacci(n-2)
  end
end

p fibonacci()

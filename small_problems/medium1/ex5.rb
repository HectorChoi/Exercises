=begin
input: integer `n` odd
output: ASCII n x n 4 pointed diamond in an n x n grid

rules:
- argument will always be an odd integer
=end

def diamond(n)
  1.upto(n/2 + 1) do |num|
    puts ' ' * ((n / 2) + 1 - num) + '*' * (2 * num - 1)
  end

  (n/2).downto(1) do |num|
    puts ' ' * ((n / 2) + 1 - num) + '*' * (2 * num - 1)
  end
end

diamond(9)

# write a program that prompts the user for two positive integers, and then
# prints the results of the following operations on those two numbers:
# addition, subtraction, product, quotient, remainder, and power.
# do not worry about validating the input.

def prompt(stringy)
  puts "==> #{stringy}"
end

prompt("Enter the first number: ")
first_int = gets.chomp.to_i

prompt("Enter the second number: ")
second_int = gets.chomp.to_i

prompt("#{first_int} + #{second_int} = #{first_int + second_int}")
prompt("#{first_int} - #{second_int} = #{first_int - second_int}")
prompt("#{first_int} * #{second_int} = #{first_int * second_int}")
prompt("#{first_int} / #{second_int} = #{first_int / second_int}")
prompt("#{first_int} % #{second_int} = #{first_int % second_int}")
prompt("#{first_int} ** #{second_int} = #{first_int ** second_int}")

=begin
input: string
output:
=end

def minilang(program)
  stack = []
  register = 0

  program.split.each do |command|
    case command
    when 'ADD'   then register += stack.pop
    when 'SUB'   then register -= stack.pop
    when 'MULT'  then register *= stack.pop
    when 'DIV'   then register /= stack.pop
    when 'MOD'   then register %= stack.pop
    when 'PUSH'  then stack.push(register)
    when 'POP'   then register = stack.pop
    when 'PRINT' then puts register
    else              register = command.to_i
    end
  end
end

minilang('3 PUSH 5 MOD PUSH 7 PUSH 4 PUSH 5 MULT PUSH 3 ADD SUB DIV PRINT')

=begin
----- Problem -----
input: string
      - will contain commands/programs and values
output: register value / current value

rules:
      Explicit:
      - n
        Place a value n in the "register". Do not modify the stack.
      - PUSH 
        Push the register value on to the stack. Leave the value in the 
        register.
      - ADDP
        ops a value from the stack and adds it to the register value, storing 
        the result in the register.
      - SUB 
        Pops a value from the stack and subtracts it from the register value, 
        storing the result in the register.
      - MULT 
        Pops a value from the stack and multiplies it by the register value, 
        storing the result in the register.
      - DIV 
        Pops a value from the stack and divides it into the register value, 
        storing the integer result in the register.
      - MOD 
        Pops a value from the stack and divides it into the register value, 
        storing the integer remainder of the division in the register.
      - POP 
        Remove the topmost item from the stack and place in register
      - PRINT 
        Print the register value
      - all operations are integer operations
      - register is initialized with value of 0
      - assume all programs are correct programs

----- Examples -----
minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
[3, 4] 5
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)

----- Data Structure -----
strings, array, integers

----- Algorithm -----
initialize register to 0
initialize empty stack

iterate thru each command
- if PUSH
- if ADD
- if SUB
- if MULT
- if DIV
- if MOD
- if POP
- if PRINT
- else

=end
def error_msg(command)
  "Error. You cannot #{command} with an empty stack."
end

def minilang(commands)
  register = 0
  stack = []
  
  commands.split.each do |command|
    case command
    when 'PUSH'  then stack.push(register)
    when 'ADD'
      return error_msg(command) if stack.empty?
      register += stack.pop
    when 'SUB'
      return error_msg(command) if stack.empty?
      register -= stack.pop
    when 'MULT'
      return error_msg(command) if stack.empty?
      register *= stack.pop
    when 'DIV'
      return error_msg(command) if stack.empty?
      register /= stack.pop
    when 'MOD'
      return error_msg(command) if stack.empty?
      register %= stack.pop
    when 'POP'
      return error_msg(command) if stack.empty?
      register = stack.pop
    when 'PRINT' then puts register
    when /[0-9]/ then register = command.to_i
    else              puts "Error. Unknown command."
    end
  end
  # puts "the stack is #{stack} and the register is #{register}"
  nil
end

minilang('3 PUSH 5 MOD PUSH 7 PUSH 4 PUSH 5 MULT PUSH 3 ADD SUB DIV PRINT')
# 8
# 

# minilang('PRINT')
# 0

# minilang('5 PUSH 3 MULT PRINT')
# 15

# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

# minilang('5 PUSH POP PRINT')
# 5

# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

# minilang('-3 PUSH 5 SUB PRINT')
# 8

# minilang('6 PUSH')
# (nothing printed; no PRINT commands)
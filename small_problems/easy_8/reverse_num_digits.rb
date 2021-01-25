=begin
# ----- Problem -----
input: number
output: new number

rules:
     Explicit:
      - output number is the argument number with its digits reversed
      - don't worry about leading zeros in arguments

# ----- Examples -----
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1 

# ----- Data Structure -----
integers, string

# ----- Algorithm -----
convert number to string, reverse, convert back to number

=end

# ----- Code -----
def reversed_number(number)
  number.to_s.reverse.to_i
end

p reversed_number(12345) #== 54321
p reversed_number(12213) #== 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1 

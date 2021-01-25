=begin
----- Problem -----
input: integer
output: negative integer or original number

rules:
- if argument is positive, return the negative of that number
- if argument is negative or 0, return argument

----- Examples -----
negative(5) == -5
negative(-3) == -3
negative(0) == 0

----- Data Structure -----
integers 

----- Algorithm -----
if integer is positive return it after multiplying by -1
else return as is
=end

def negative(number)
  number.positive? ? -number : number
end

p negative(5) #== -5
p negative(-3) #== -3
p negative(0) #== 0
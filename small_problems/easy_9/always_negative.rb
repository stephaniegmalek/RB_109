=begin
----- Problem -----
input: number 
output: negative number

rules:
    Explicit:
    - if argument is a negative, return argument
    - if argument is a positive, return negative of argument
    
----- Examples -----
negative(5) == -5
negative(-3) == -3
negative(0) == 0 # no such thing as -0 in ruby

----- Data Structure -----
numbers/integers

----- Algorithm -----
- check if greater than 0 
=end

def negative(number)
  number > 0 ? -number : number
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0

# Further Exploration
def negative_2(number)
  -number.abs
end
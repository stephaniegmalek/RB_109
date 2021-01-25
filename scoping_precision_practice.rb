# -----
a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a
# On line 2, the local variable a is assigned the value 7. The method definition on line 4
# accepts a parameter named a. On line 5, the method variable a is reasigned to the value of 
# a plus 10. On line 8, the method my_value is called/invoked and the local variable a is passed in as an argument
# the method doesn't output anything. It's return value is 17. Line 9 outputs the local variable
# a which is still 7. 
# -----
a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a
# on line 16, local variable a is initialized and assigned value 7. The method definition 
# on line 18 accepts a parameter named b. On line 19, the method variable a is assigned the 
# value of method variable b. On line 22, the method my_value is called/invoked passing in  
# the argument of a + 5. The method variable b is now a + 5 (12). the method variable a is 
# assigned the value of method variable b on line 19. The method my_value does not output 
# anything. The return value is b or in this case 12. On line 23, the local variable a is
# output which is still 7. 

# -----

a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a
# on line 30, local variable a is assigned the string "Xyzzy". On line 36, the method my_value 
# is defined with the parameter b. On line 40, my_value method is called/invoked, passing in local
# variable a as an argument. On line 37, my_value method reasigns the character at index 2 of 
# arguement/input string to '-'. There is no output and the return value is '-'. On line 37, the 
#local variable a is outputted, whose value is now "Xy-zy"

# -----
a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a

# on line 43, the local variable a is assigned string "Xyzzy". On line 49, the method my_value is called and the local variable a 
# is passed in as an argument. On line 46, the method variable b, which is referencing the same string as local varibale a is reasigned 
# to the string 'yzzyx'. On line 50, local variable a is outputted which is still "Xyzzy"

# -----


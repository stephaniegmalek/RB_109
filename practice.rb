a = 'hello'
b = a
a = 'goodbye'

# On `line 1`, we initalize local variable `a` and assign it a string object with
# the value `hello`.

# On `line 2`, we initalize local variable `b` and assign it a string object that
# the local variable `a` is referencing. Currently, both of these local variables
# are pointing to the same object.

# On `line 3`, we are reassigning local variable `a` to a different string object
# with the value `goodbye`. So now, the local variable `a` is point to one string
# object with the value `goodbye` and the local variable `b` is pointing to one 
# string object with the value `hello`. 

# ---------------------------------------------------------------------------------
def example(str)
  i = 3
  loop do
    puts str
    i -= 1
    break if i == 0
  end
end

example('hello')

# On `lines 18-25` we are defining the method `example` which takes 1 parameter. 
# On `line 27` we are calling the method `example` and passing in the string
# `hello` as an argument to it. 

# On `line 19` we are initalizing the local variable `i` and assigning it an integer
# with the value `3`. 

# On `line 20` we are calling the method `loop` and passing in a `do..end` block 
# as an arguement. 

# On `line 21` we are calling the method `puts` and passing in local variable `str`
# to it as an arguement. 

# On `line 22` we are reasigning the local variable `i` to the return value of a 
# method call `Integer#-` on a local variable `i` with integer `1` passed to it as
# an arguement. `-=` is Ruby's syntactical sugar for `i = i - 1` and `-` is not an 
# operator but a method `i = i.-(1)`. 

# On `line 23`, we break out of the loop using the keyword `break` if the value of 
# the object that the local variable `i` is referencing is equal to 0. 

# On `line 27` we are calling the method `example` and passing in string `hello` as
# an arguement. 

# This code outputs string `hello` 3 times and the returns nil.

# ---------------------------------------------------------------------------------


a = 4

loop do
  a = 5
  b = 3
  break
end

puts a
puts b

# On `line 58` we are initalizing local variable `a` and assigning it an integer
# with the value of `4`. 

# On `line 60` we are calling the method `loop` and passing in a `do...end` block
# as an argument.

# On `line 61` we are reasigning the local variable `a` to an integer with the 
# value of `5`. 

# On `line 62` we are initalizing local variable `b` and assigning it an integer 
# with the value of `3`.

# On `line 63` we break out of the loop using the keyword `break`. 

# On `line 66` we are calling the method `puts` and passing in the local variable
# `a` as an arguement. This outputs `5`.

# On `line 67` we are calling the method `puts` and passing in the local variable 
# `b` as an argument. This outputs an `error` becauase the local variable `b` is not accessable
# by the outer scope as a result of it being initalized in an inner scope. 

# --------------------------------------------------------------------------------

a = 4
b = 2

loop do
  c = 3
  a = c
  break
end

puts a
puts b

# On `line 92` we are initalizing the local variable `a` and assigning it an integer
# with the value of `4`.

# On `line 93` we are initalizing the local variable `b` and assigning it an integer
# with the value of `2`. 

# On `line 95` we are calling the method `loop` and passing in a `do..end` block as
# an arguement. 

# On `line 96` we are initalizing the local variable `c` and assigning it an integer
# with the value of `3`. 

# On `line 97` we are reasigning the local variable `a` to the integer object that
# the local variable `c` is referencing. So now, the local variable `a` and local
# variable `c` are pointing to the same object. 

# On `line 98` we break out of the loop using the keyword `break`.

# On `line 101` we are calling the method `puts` and passing in the local variable `a`
# as an arguement. This outputs `3` and returns `nil`.

# On `line 102` we are callingthe method `puts` and passing in the local variable `b`
# as an arguement. This outputs `2` and returns nil. 

# -------------------------------------------------------------------------------------------
a = 1

loop do
  puts a
  a = a + 1
  break
end 

puts a

# On `line 129` we are initalizing local variable `a` and assigning it an integer
# with the value of `1`.

# On `line 131`, we are calling the method `loop` and passing in a `do..end` block
# as an argument. 

# On `line 132` we are calling the method `puts` and passing in the local variable
# `a` as an argument. 

# On `line 133` we are reassigning the local variable `a` to the return value of
# a method call `Integer#+` on a local variable `a` with integer `1` passed into
# as an argument. 

# On `line 134` we break out of the loop using the keyword `break`

# On `line 137` we are calling the method `puts` and passing in the local variable
# `a` as an argument. 

# This code outputs `1` from the method call on `line 132` and then `2` from the
# method call on `line 137`. Both return nil

# -------------------------------------------------------------------------------
loop do
  b = 1
  break
end 

puts b 

# On `line 161` we call the method `loop` and pass in a `do..end` block as an argument

# On `line 162` we are initializing a local variable `b` and assigning it an integer
# with the value of `1`. 

# On `line 163` we are breaking out of the loop using the keyword `break`.

# On `line 166`, we are calling the method `puts` and passing in a local variable
# `b` as an argument. This outputs an Error message because the local variable `b`
# was initialized inside of the loop method and is not accesable by the outer scope. 
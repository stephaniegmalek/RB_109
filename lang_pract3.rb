a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a

=begin
This code is going to throw an exception due to local variable scoping rules. 

On `line 7` the method `my_value` is called and the variable `a` is passed in as
an arguement. 

On `line 3 - 5` the method `my_value` is defined with 1 parameter `b`. On `line 4`
the variable `b` is assigned to the return value of the method call `Integer#+` on 
the integer object with a value of 7 that the local variable `a` is referening with 
local variable `a` passed in as an arguement. This cause Ruby to throw an exception.

This is demonstrating that a method's scope is entirely self contained in respect 
to local variables. Local variables intialized outside of the method definition
are not visible inside the method definition. 
=end

a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

=begin
This code outputs `3` and the return value is nil. The return value is nil because
the last expression executed is on `line 8` where the method `puts` is called with
the variable `a` passed in as an arguement and the `puts` method always returns nil.

On `line 3 - 6` the method `each` is called on the array object the variable `array` 
is referencing. The method takes a `do...end` block with 1 parameter called `element`.
The code within the block is executed for each iteration. In this case, on `line 5` the 
variable `a` is reassigned to reference the value of the current element in the array.
So variable `a` is reassigned to reference the integer object at index 0 of the array 
with a value of `1` and then the integer object at index 1 with a value of `2` and lastly
the integer object at index 2 with a value of `3`. Which is why when the `puts` method
is called on `line 8` with variable `a` passed in as an arguement, the output is `3`. 

This code demonstrates the variable scoping rules are different for method invocation
with a block. The block can use and modifiy variables that are defined outside the 
block. 
=end
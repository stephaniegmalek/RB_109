a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a

=begin
This code outputs 7 and the return value is nil (The puts method always returns 
a value of nil). This is demonstrating the concept that assignment is non mutating, 
it is binding the variable to a new object. 

On `line 7` the method `my_value` is called and the local variable `a` is passed in
as an arguement. The local variable `a` is pointing to an Integer object with a 
value of 7 from when it was initalized on `line 1`. 

The method `my_value` is defined on `lines 3 - 5` with 1 parameter, `b`. The variable 
`a` and `b` are now both pointing to the same Integer object with a value of 7. 

On `line 4` the variable `b` is being reassigned. `b += 10` is syntactical sugar 
for `b = b + 10` so variable `b` is being reassigned to the return value of a method
call `Integer#+` on the Integer object with a value of `7` that variable `b` is 
referencing with integer `10` passed to it as an argument. Variable `b` is now 
pointing to/bound to a different Integer object with a value of `17` while variable 
`a` is still pointing to the Integer object with a value of `7`.

That is why when the puts method on `line 8` is called and the local variable `a` 
is passed in as an argument the output is 7. 
=end

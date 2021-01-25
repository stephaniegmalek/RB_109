a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a

=begin
This code outputs 7 and it's return value is nil. The return value is nil because
on `line 8` the method puts is called and the puts method always returns nil. 

This code is demonstrating the concept that assignment is not mutating but also that
a method's scope is entirely self contained with respect to local varables. Local variables
outside the method definition are not visible inside the method definition. 

The local variable `a` that is initialized and bound to an integer object
with the value of `7` on `line 1` is not available to the method my_value. But also, the
variables inside the method definition are not visble outside the method definition.

So the variable `a` within the method `my_value` is a local variable with no top-level 
visibility which is why when on `line 8` when the puts method is called with the variable `a` 
passed in as an arguement the output is `7`. 

=end

a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a

=begin
This code outputs 7 and it's return value is nil. The return value is nil because the 
last line executed is `line 8` where the puts method is called and the puts method always
returns nil. 

This code demonstrates the concept that a method's scope is entirely self contained with
respect to local variables. Local variables outsdie the method definition are not visibile
inside the method definition. 

So when on `line 8` the puts method is called passing in the variabel `a` as an arguement
the output is 7 because the variable `a` is still assigned to the integer object it was
initalized with.  
=end

a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a

=begin
This code outputs `Xy-zy` and the return value is nil. The return value is nil because
on `line 8` (the last line executed) the `puts` method is called and the `puts` method
always returns nil. 

The output is `Xy-zy`. On `line 7` the method `my_value` is called and the variable
`a` is passed in as an argument. The variable `a` is bound to a string object with 
a value of `Xyzzy` from when it was initalized on `line 1`. 

The method `my_value` is defined on `lines 3 - 5` and has 1 parameter named `b`. The 
variable `a`and `b` are now both pointing to the same string object with the value of 
`Xyzzy`. On `line 4`the variable `b` uses indexed assignment to change the character 
at index 2 of the string object from `z` to `-`. Variable `a` and varible `b` are 
both still referencing the same string object which is why when on `line 8` the puts 
method is called with the variable `a` passed in as an arguement the output is 
`Xy-zy`. This demonstrats the concept that indexed assignment mutates the caller and
that strings are mutable - they can be changed. 
=end

a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a

=begin
The output is `Xyzzy` and the return value is nil. The return value is nil because
the last expression executed calls the method `puts` and the method `puts` always
returns nil. 

The output is `Xyzzy` because the variable `a` is referencing the string object with
the value `Xyzzy` that it was initalized with on `line 1` still. 

The method `my_value` is called on `line 7` with the variable `a` passed in as an
argument. The method `my_value` is defined on `lines 3 - 5` with one parameter `b`.
Variable `a` and `b` are now referencing the same string object with the value of
`Xyzzy`. Within the method `my_value` the variable `b` is reassigned to a string
object with a value of `yzzyX`. Variable `a` and Variable `b` are no longer referencing
the same string object which is why when the put's method is called on `line 7`
with variable `a` passed in as an arguement the output is `Xyzzy`.

This demonstrates that assignment is non-mutating
=end
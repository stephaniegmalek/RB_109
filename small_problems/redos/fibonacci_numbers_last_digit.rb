=begin
----- Problem -----
input: n, an integer
output: the last digit of the nth Fibonacci number

----- Examples -----
fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
fibonacci_last(123456789) # -> 4

----- Data Structure -----
integers, strings, arrays

----- Algorithm -----
- get nth fibonacci number
  - initalize num1 and num2 variables and assign 1
  - from 3 up to nth
    - reassign num1 to num2
    - reassign num2 to the value of num1 + num2
  - return num2 
- convert fibonacci number to string
- use index reference to get last digit
- convert back to integer
=end

def fibonacci(nth)
  num1, num2 = [1, 1]
  3.upto(nth) do
    num1, num2 = num2, num1 + num2
  end
  num2
end

# p fibonacci(1) #== 1
# p fibonacci(2) #== 1
# p fibonacci(3) #== 2
# p fibonacci(4) #== 3
# p fibonacci(5) #== 5
# p fibonacci(12) #== 144
# p fibonacci(20) #== 6765

def fibonacci_last(nth)
  fibonacci(nth).to_s[-1].to_i
end

# p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
# p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# p fibonacci_last(123456789) # -> 4

# Alt

def fibonacci_last_alt(nth)
  last2 = [1, 1]
  3.upto(nth) do
    last2 = [last2.last, (last2.first + last2.last) % 10]
  end
  last2.last 
end

p fibonacci_last_alt(15)
p fibonacci_last_alt(20)
p fibonacci_last_alt(100)
p fibonacci_last_alt(100_001)
p fibonacci_last_alt(1_000_007)
p fibonacci_last_alt(123456789)
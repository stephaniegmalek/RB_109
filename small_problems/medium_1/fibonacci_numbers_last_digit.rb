=begin
----- Problem -----
input: nth
      - integer that represents the nth iteration of Fibonacci sequence to go up to
output: last digit of the nth Fibonacci number

----- Examples -----
fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
fibonacci_last(123456789) # -> 4

----- Data Structure -----
integers, strings

----- Algorithm -----
calculate the nth fibonacci number
- first num and second num are 1
- from 3 up to nth iteration
  - first num becomes second num
  - second num becomes sum of first and second num

pull out the last digit
- convert to string
- get last character convert back to num
=end

def fibonacci(nth)
  first, second = [1, 1]
  3.upto(nth) do
    first, second = [second, first + second]
  end
  second
end

# def fibonacci_last(nth)
#   fib_num = fibonacci(nth)
#   fib_num.to_s[-1].to_i
# end

def fibonacci_last(nth)
  first, second = [1, 1]
  3.upto(nth) do
    first, second = [second, (first + second) % 10]
  end
  second
end

# def fibonacci_last(nth)
#   last2 = [1, 1]
  
#   3.upto(nth) do
#     last2 = [last2.last, (last2.first + last2.last) % 10]
#   end
#   last2.last
# end

# p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
# p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# p fibonacci_last(123456789) # -> 4

# Further Exploration 
# handle a nth number no matter how big
# fibonacci_last_further(123456789987745) # == 5

def fibonacci_last_further(nth)
  if nth % 60 == 0
    0
  else
    fibonacci_last(nth % 60)
  end
end

p fibonacci_last_further(123456789987745) # == 5
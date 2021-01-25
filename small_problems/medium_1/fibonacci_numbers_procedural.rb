=begin
----- Problem -----
input: nth
      - how many sequences of the fibonacci sequence
output: the nth Fibonacci number

rules:
      Explicit:
      - Fibonacci series is sequence of numbers starting with 1 and 1 where each number
        is the sum of the two previous numbers:
        1 + 1 = 2, 1 + 2 = 3, 2 + 3 = 5
        F(1) = 1
        F(2) = 1
        F(n) = F(n - 1) + F(n - 2) where n > 2
        
      - method must be procedural and non-recursive

----- Examples -----
fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765
fibonacci(100) == 354224848179261915075
fibonacci(100_001) # => 4202692702.....8285979669707537501

----- Data Structure -----
integers

----- Algorithm -----
first num is 1
second num is 1
iterate to nth iteration starting at 3 (first and second are 1)
- first num becomes sec num
- second num becomes sum of first num and sec num

=end

def fibonacci(nth)
  first, second = [1, 1]
  3.upto(nth) do
    first, second = [second, first + second]
  end
  second
end

p fibonacci(1) #== 1
p fibonacci(2) #== 1
p fibonacci(3) #== 2
p fibonacci(4) #== 3
p fibonacci(5) #== 5
p fibonacci(12) #== 144
p fibonacci(20) #== 6765
p fibonacci(100) #== 354224848179261915075
# p fibonacci(100_001) # => 4202692702.....8285979669707537501
=begin
----- Problem -----
input: 2 integers
       - start num and end num
output: print string
        - each number between start num and end num except if a num is divisible
          by 3, print 'Fizz', if divisible by 5, print 'Buzz' and if divisible
          by 3 AND 5, print 'FizzBuzz'
rules:
- start and end num are included in output

----- Example -----
fizzbuzz(1, 15) 
# -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

----- Data Structure -----
integers, strings, array

----- Algorithm -----
initialize results variable
iterate from start num to end num
- for each num check if divisible by 3, 5 and both 
  - add num, Fizz, Buzz or FizzBuzz to results as appropriate
join results and print
=end

def fizzbuzz(start_num, end_num)
  result = []
  start_num.upto(end_num) do |num|
    result << fizzbuzz_value(num)
  end
  result.join(', ')
end

def fizzbuzz_value(number)
  case 
  when number % 5 == 0 && number % 3 == 0
    'FizzBuzz'
  when number % 5 == 0
    'Buzz'
  when number % 3 == 0
    'Fizz'
  else
    number
  end
end

p fizzbuzz(1, 15)
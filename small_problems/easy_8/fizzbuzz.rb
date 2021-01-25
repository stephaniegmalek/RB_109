# ----- Problem -----
# input: starting number and ending number 
# output: print out all numbers between argument numbers except:
#         - if a number is divisible by 3, print "Fizz"
#         - if a number is divisible by 5 , print "Buzz"
#         - if a number is divisible by 3 and 5, print "FizzBuzz"

# rules:
#       Implicit:
#       - starting num and ending num are included in output

# ----- Example -----
# fizzbuzz(1, 15) 
# -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

# ----- Data Structure -----
# range of numbers, strings

# ----- Algorithm -----
# initalize variable to contain results
# iterate thru range of numbers from start num to end num
# - determine value 
#   - if divisible by 3 and 5, add FizzBuzz to results
#   - if divisible by 3 add Fizz to results
#   - if divisible by 5 add Buzz to results
#   - else add num to results
# combine list and output

# ----- Code -----
def fizzbuzz_value(number)
  case
  when number % 3 == 0 && number % 5 == 0
    "FizzBuzz"
  when number % 3 == 0
    "Fizz"
  when number % 5 == 0
    "Buzz"
  else
    number
  end
end

def fizzbuzz(start_num, end_num)
  result = []
  start_num.upto(end_num) do |num|
    result << fizzbuzz_value(num)
  end
  result.join(", ")
end

puts fizzbuzz(1, 15)
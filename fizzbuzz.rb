# ----- Problem -----
# write a method that takes two arguments: the first is the starting number, and
# the second is the ending number. Print out all numbers between the two numbers
# except if a number is divisible by 3, print "Fizz", if a number is divisible 
# by 5, print "Buzz", and finally if a number is divisble by 3 and 5, print "FizzBuzz"

# input: 2 numbers
#       - starting number 
#       - ending number 
# output: all numbers between starting number and ending number, Fizz, Buzz or 
#          FizzBuzz as appropriate comma separated on 1 line:
#         - if a number is divisble by 3, print "Fizz"
#         - if a number is divisble by 5, print "Buzz"
#         - if a number is divisible by both 3 and 5, print "FizzBuzz"

# rules: 
#       Implicit:
#       print out all numbers including starting and ending number 


# ----- Examples -----
# fizzbuzz(1, 15) == 1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11,
#                    "Fizz", 13, 14, "FizzBuzz"

# fizzbuzz(3, 16) == "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz",
#                     13, 14, "FizzBuzz", 16

# ----- Data Structure -----
# numbers, strings, ranges, if/else conditional

# ----- Algorithm -----
# create result array and set to empty array
# from starting number to ending number:
# - if the number is divisble by 3 and divisble by 5
#   - add "FizzBuzz" to result array
# - if the number is divisble by 3
#   - add "Fizz" to result array
# - if the number is divisible by 5
#   - add "Buzz" to result array
# - else
#   - add the number to result array
# return results array with each element joined with a , and space

# ----- Code -----
def fizzbuzz(starting_num, ending_num)
  result = []
  starting_num.upto(ending_num) do |num|
    if num % 3 == 0 && num % 5 == 0
      result << "FizzBuzz"
    elsif num % 3 == 0
      result << "Fizz"
    elsif num % 5 == 0
      result << "Buzz"
    else
      result << num
    end
  end
  result.join(', ')
end

puts fizzbuzz(1, 15)

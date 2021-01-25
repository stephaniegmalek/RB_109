# ----- Problem -----
# write a method that takes two numbers. It should print out all the primes between
# the two numbers. Don't use Ruby's prime class.

# input: 2 numbers
# output: all numbers between two argument numbers that are prime 

# rules:
#       Explicit: 
#       - Don't use Ruby's prime class
#       Implicit:
#       - a prime number is a number that can only be evenly divided by itself and
#         1 

# ----- Examples -----
# find_primes(3, 10) # == 3, 5, 7
# find_primes(2, 12) # == 2, 3, 5, 7, 11

# ----- Data Structure -----
# integers, ranges

# ----- Algorithm -----
# mental model:
# - from number 1 to number 2, test each number to see if only divides evenly only 
#   by 1 and itself. 

# from number 1 upto number 2, test if each number is prime
# - is prime?
#   - find square root of number
#   - from 2 up to square root
#     - if number is evenly divided into them then not a prime
# - if it is prime add to list of prime numbers

# ----- Code -----

def is_prime?(number)
  square_root = Math.sqrt(number)
  2.upto(square_root) do |num|
    return false if number % num == 0
  end
  true
end

def find_primes(num1, num2)
  (num1...num2).select do |num|
    is_prime?(num)
  end
end

puts find_primes(3, 10)
puts find_primes(2, 12)
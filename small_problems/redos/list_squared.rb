=begin
Divisors of 42 are : 1, 2, 3, 6, 7, 14, 21, 42. 
These divisors squared are: 1, 4, 9, 36, 49, 196, 441, 1764. 
The sum of the squared divisors is 2500 which is 50 * 50, a square!

Given two positive integers we want to find all integers between them whose 
sum of squared divisors is itself a square. 42 is such a number.

The result will be an array of arrays, each subarray having two elements, 
first the number whose squared divisors is a square and then the sum of the squared divisors.

----- Problem -----
input: 2 positive integers
      - start num and end num
output: array of array
      - each subarray will have 2 elements:
        - number whose squared divisors is a square
        - sum of the squared divisors
----- Examples -----
list_squared(1, 50)

----- Data Structure -----
integers, arrays

----- Algorithm -----
initalize results variable 
iterate from start num to end num, for each num:
- find all divisors
  - initialize results variable 
  - iterate from 1 to number
    - if current num divides into number evenly add to results 
- square all divisors abd get sum of squared divisors
  - iterate thru list of divisors
    - square each value
  - find sum of list
- find square root of sum
  - iterate from 1 to sum
    - return num if num * num equals sum
- if square root of sum of squared divisors 
  - add num and sum to results
return results 
=end
def get_divisors(num)
  results = []
  1.upto(num) do |n|
    results << n if num % n == 0
  end
  results
end

def square_and_sum(list)
  list.map { |val| val * val}.sum
end

# p square_and_sum([1, 2, 3, 6, 7, 14, 21, 42])

def find_square_root(sum)
  1.upto(sum) do |num|
    return num if num * num == sum
  end
  nil
end

# p find_square_root(2500)

def list_squared(start_num, end_num)
  results = []
  start_num.upto(end_num) do |current_num|
    divisors = get_divisors(current_num)
    square_sum = square_and_sum(divisors)
    square_root = find_square_root(square_sum)
    results << [current_num, square_sum] if square_root
  end
  results
end

p list_squared(1, 50)
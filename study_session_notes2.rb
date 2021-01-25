=begin
Divisors of 42 are : 1, 2, 3, 6, 7, 14, 21, 42. 
These divisors squared are: 1, 4, 9, 36, 49, 196, 441, 1764. 
The sum of the squared divisors is 2500 which is 50 * 50, a square!

Given two positive integers we want to find all integers between them whose 
sum of squared divisors is itself a square. 42 is such a number.

The result will be an array of arrays, each subarray having two elements, 
first the number whose squared divisors is a square and then the sum of the squared divisors.

- create a list where I will store results []
- iterate from starting number until the ending number
    - find all divisors of current number
       - initialize divisors as array
       - iterate from 1 upto given number
       - add current number to divisors array if given number can be divided by current number without remainder
    - sum squared values of those divisors
       - convert the given array to array of squared elements and then sum them
    - find the root of that summed number
       - iterate from 1 to given number and return the number if current number * current number == given number
       - break if current number * number > given number
    - add current number and sum if there is a root
  return list  

=end

def retrieve_divisors(num)
  divisors = []
  1.upto(num).each do |current_num|
    divisors << current_num if (num % current_num == 0)
  end
  divisors
end

def sum_of_squared_nums(numbers)
  numbers.map { |num| num * num}.reduce(:+)
end


def find_root(num)
  1.upto(num).each do |current_num|
    return current_num if current_num * current_num == num
    break if current_num * current_num > num
  end
  nil
end

def list_squared(start_num, end_num)
  list = []
  start_num.upto(end_num).each do |current_num|
    divisors = retrieve_divisors(current_num)
    sum = sum_of_squared_nums(divisors)
    root = find_root(sum)
    list << [current_num, sum] if root
  end
  list
end
=begin
----- Problem -----
input: array
output: an array of elements whose index is a fibonaci number

rules:
- fibonacci sequence:
  - 1, 1, 2, 3, 5, 8, 13

----- Examples -----
fibonaci_index([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18]
#== [2, 3, 4, 6, 9, 14]

----- Data Structure ----- 
integers, arrays

----- Algorithm -----
create list of fibonacci numbers from 1 to size of array
  - initalize list variable to hold fib seq 
  - initalize num1 and num2 variables and assign to 1
  - iterate from 3 to nth
    - add num1 and num2 to list 
    - reassign num1 and num2 to num2 and the sum of num1 and num2 
  - return list
initialize list variable
iterate thru argument array
- put elements whose index is fibonacci number into list 
=end

def get_fibonacci_nums(nth)
  list = [1, 1]
  num1, num2 = 1, 1
  3.upto(nth) do
    num1, num2 = num2, num1 + num2
    list << num2
  end
  list
end

# p get_fibonacci_nums(10)
# 1 1 2 3 5 8 13 21 34 55

def fibonaci_index(array)
  fibonacci_nums = get_fibonacci_nums(array.size)
  list = []
  array.each_with_index do |ele, idx|
     list << ele if fibonacci_nums.include?(idx)
  end
  list
end

p fibonaci_index([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18])
#== [2, 3, 4, 6, 9, 14]
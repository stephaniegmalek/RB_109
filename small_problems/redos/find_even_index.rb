=begin
You are going to be given an array of integers. Your job is to take that array and 
find an index N where the sum of the integers to the left of N is equal to the sum 
of the integers to the right of N. If there is no index that would make this happen,
return -1. 

For example:
Let's say you're given the array [1, 2, 3, 4, 3, 2, 1]:
Your method will return the index 3, because at the third position of the array, the
sum of the left side of the index [1, 2, 3] and the sum of the right side of the index
[3, 2, 1], both equal 6.

Another one:
You are given the array [20, 10, -80, 10, 10, 15, 35]. 
At index 0, the left side is [], the right side is [10, -80, 10, 10, 15, 35]. They
are both equal to 0 when added. ( Empty arrays are equal to 0 in this problem). Index 
0 is the place where the left side and right side are equal. 

------ Problem -----
input: an array of integers
output: integer -> index where sum of integers to left and sum of integers to right are equal
        - if no index makes this happen, return -1
rules:
- integer at index is not included 

----- Examples -----
p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3 
index 0: left - [] = 0 right - [2, 3, 4, 3, 2, 1] = 15
index 1: left - [1] = 1 right - [3, 4, 3, 2, 1] = 13
index 2: left - [1, 2] = 3 right - [4, 3, 2, 1] = 10
index 3: left - [1, 2, 3] = 6 right - [3, 2, 1] = 6

p find_even_index([1, 100, 50, -51, 1, 1]) == 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 10, 30, 10, 10, 15, 35)] == 3
p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3

----- Data Structure -----
integers, arrays

----- Algorithm -----
iterate thru each index of array
- initalize left_side variable and assign it array of integers to left of index
  - array elements from 0 to current index (but not including element at current index)
    [0...current index]
- initalize right_side variable and assign it array of integer to right of index
  - array elements from current index + 1 to end 
    [current index + 1.. -1]
- compare left_side sum to right_side sum
  - if equal, return current index
return -1
=end

def find_even_index(array)
  array.each_index do |idx|
    left_side = array[0...idx]
    right_side = array[idx + 1..-1]
    return idx if left_side.sum == right_side.sum
  end
  -1
end

p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3 
p find_even_index([1, 100, 50, -51, 1, 1]) == 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3
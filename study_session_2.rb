=begin
------ Intro -----
2 problem and 40 - 60 mins to solve. 
no documentation
strongly advised to use pseduo code 
require students to talk aloud while coding to explain thought process but not 
literally everything you are typing
if you stop talking you will get asked questions
check test cases in detail - some requirements are implicit 
coding live can cause anxiety and you must know that going into it
- if can solve medium problems with ease you are ready
- 5 and 6 on code wars - you are ready 
practice talking a loud and explaining your process at home
can ask questions if need clarifications etc 

----- Given Problem ------
# You are going to be given an array of integers. Your job is to take that array 
and find an index N where the sum of the integers to the left of N is equal to 
the sum of the integers to the right of N. If there is no index that would make 
this happen, return -1.

# For example:

# Let's say you are given the array [1,2,3,4,3,2,1]:
# Your method will return the index 3, because at the 3rd position of the array, 
the sum of left side of the index [1,2,3] and the sum of the right side of 
the index [3,2,1] both equal 6.

# Another one:
# You are given the array [20,10,-80,10,10,15,35]
# At index 0 the left side is []
# The right side is [10,-80,10,10,15,35]
# They both are equal to 0 when added. (Empty arrays are equal to 0 in this problem)
# Index 0 is the place where the left side and right side are equal.

p find_even_index([1,2,3,4,3,2,1]) == 3
idx = 0
left [] 0..0
right [ 2, 3, 4, 3, 2, 1] 0..-1
idx = 1
left [1] 0...1
right [3, 4, 3, 2, 1]
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3

----- Problem -----
input: array
output: integer
        - is the index where the sum of the integers to the left of it is 
          equal to the sum of the integers to the right of it
rules:
- an empty array is eqyal to 0
- if no index that meets the requirement return -1
- the number at the returned index is not included in the sum on left or right side

----- Example -----
p find_even_index([1,2,3,4,3,2,1]) == 3
idx = 0
left = [] -> 0...0
right = [ 2, 3, 4, 3, 2, 1] -> idx + 1..-1
idx = 1
left = [1] -> 0...1
right = [3, 4, 3, 2, 1] -> 2..-1

----- Algorithm -----
initialize index variable
while index is less than array size
- initialize left side variable
  - slice from 0 to idx
  - find sum of left side
- initialize right side variable 
  - slice from idx to -1
  - find sum of right side
- compare left side and right side sums 

=end

def find_even_index(array)
  idx = 0
  while idx < array.size
    left = array[0...idx].sum
    right = array[idx+1..-1].sum
    return idx if left == right
    idx += 1
  end
  -1
end

p find_even_index([1,2,3,4,3,2,1]) #== 3
p find_even_index([1,100,50,-51,1,1]) #== 1
p find_even_index([1,2,3,4,5,6]) #== -1
p find_even_index([20,10,30,10,10,15,35]) #== 3
p find_even_index([20,10,-80,10,10,15,35]) #== 0
p find_even_index([10,-80,10,10,15,35,20]) #== 6
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) #== 3
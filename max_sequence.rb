=begin
----- Problem -----
The maximum sum subarray problem consists in finding the maximum sum of a contiguous
subsequence in an array of integers:

maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4]
-- should be 6: [4, -1, 2, 1]
Easy case is when the array is made up of only positive numbers and the maximum
sum is the sum of the whole array. If the array is made up of only negative numbers,
return 0 instead.

Empty array is considered to have zero greatest sum. Note that the empty array is 
also a valid subarray. 

input: an array of integers 
      - can be positive or negative
output: maximum sum of subarray

rules: 
      Explicit:
      - empty array is valide input
        - returns 0
      - if array all negative numbers
        - return 0

----- Examples -----
max_sequence([]) # == 0
max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) # == 6
max_sequence([11]) # == 11
max_sequence([-32]) # == 0
max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) # == 12
-> [-2, 1] == -1
-> [-2, 1, -7] == -8
-> [-2, 1, -7, 4] == -4
-> [-2, 1, -7, 4, -10] == -14
-> [-2, 1, -7, 4, -10, 2] == -12
-> [-2, 1, -7, 4, -10, 2, 1] == -11
-> [-2, 1, -7, 4, -10, 2, 1, 5] == -6
-> [-2, 1, -7, 4, -10, 2, 1, 5, 4] == -2
-> [1, -7] == -6
-> [1, -7, 4] == -2
-> [1, -7, 4, -10] == -12


----- Data Structure -----
integers, arrays, subarrays

----- Algorithm -----
Get all subarrays

Iterate thru all subarrays
- find sums

Select max sum 

=end

def subarrays(array)
  subarray_list = []
  0.upto(array.length - 2) do |start_idx|
    (start_idx + 1).upto(array.length - 1) do |idx|
      subarray_list << array[start_idx..idx]
    end
  end
  subarray_list
end

# p subarrays([-2, 1, -7, 4, -10, 2, 1, 5, 4])

def max_sequence(array)
  return 0 if array.empty? || array.all? { |num| num.negative? }
  return array[0] if array.length == 1
  
  all_subarray = subarrays(array)
  sums_arr = all_subarray.map { |subarray| subarray.reduce(:+) }
  sums_arr.max
end

p max_sequence([]) # == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) # == 6
p max_sequence([11]) # == 11
p max_sequence([-32]) # == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) # == 12
p max_sequence([-1, -2, -3])
p max_sequence([1, 2, 3, 4])
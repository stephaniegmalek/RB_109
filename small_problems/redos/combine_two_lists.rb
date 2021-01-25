=begin
----- Problem -----
input: 2 arrays
output: 1 array containing all elements from input arrays in alternating order

rules:
- input arrays are non-empty
- input arrays have the same number of elements

----- Example -----
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

----- Data Structure -----
array, integers

----- Algorithm -----
initialize result variable 
initialize index variable 
loop 
- add element at index from array 1 and array 2 to result 
- continue until index same as array size

=end

def interleave(arr1, arr2)
  result = []
  idx = 0
  while idx < arr1.size
    result << arr1[idx] << arr2[idx]
    idx += 1
  end
  result
end

p interleave([1, 2, 3], ['a', 'b', 'c']) #== [1, 'a', 2, 'b', 3, 'c']

def interleave_further(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave_further([1, 2, 3], ['a', 'b', 'c'])
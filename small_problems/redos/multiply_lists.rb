=begin
----- Problem -----
input: 2 arrays
output: 1 array
        - elements are productus of each pair from the arguments that have the same index
rules:
- assume the arguments contain the same number of elements 

----- Examples -----
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

----- Data Structure -----
arrays

----- Algorithm -----
merge arrays
find product of each sub array
=end

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |pair| pair.reduce(&:*)}
end

p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77] 

def multiply_list_further(arr1, arr2)
  product = []
  arr1.each_with_index do |element, idx|
    product << element * arr2[idx]
  end
  product
end
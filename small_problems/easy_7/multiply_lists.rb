# ----- Problem -----
# input: two arrays of numbers
# output: new array
#         - contains product of each pair of numbers from the arguments that have
#           the same index

# rules:
#       Explicit:
#       - assume that the arguments contain the same number of elements

# ----- Examples -----
# multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
# multiply_list([1, 2, 3], [4, 5, 6]) == [4, 10, 18]
# multiply_list([2, 4, 6], [8, 10, 12]) == [16, 40, 72]

# ----- Data Structure -----
# array of numbers, products 

# ----- Algorithm -----
# mental model: 
# - iterate thru argument arrays and multiple corresponding integers together, put
#   products into new array

# create product_list variable and assign to empty array
# iterate thru first argument array
# - multiple num by corresponding num in second argument array and add to product_list
# return product_list

# ----- Code -----
def multiply_list(array1, array2)
  product_list = []
  array1.each_with_index do |number, idx|
    product_list << number * array2[idx]
  end
  product_list
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
p multiply_list([1, 2, 3], [4, 5, 6]) == [4, 10, 18]
p multiply_list([2, 4, 6], [8, 10, 12]) == [16, 40, 72]

# Further Exploration
def multiply_list_zip(arr1, arr2)
  arr1.zip(arr2).map { |pair| pair.inject(&:*) }
end

p multiply_list_zip([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]
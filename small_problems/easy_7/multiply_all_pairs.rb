# ----- Problem -----
# input: two array arguments
#       - each array contains a list of numbers
# output: a new array
#       - contains the product of every pair of numbers that can be formed between
#         the elements of the two arrays
#       - the products are sorted by increasing value

# rules:
#       Explicit:
#       - assume neither argument is an empty array
#       Implicit:
#       - argument arrays don't have to be the same size
#       - duplicates are okay

# ----- Examples -----
# multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
# multiply_all_pairs([1, 2], [1, 2, 3]) == [1, 2, 2, 3, 4, 6]

# ----- Data Structure -----
# arrays of numbers, products

# ----- Algorithm -----
# mental model:
# - start with first element of first argument array, find product for each element of 
#   second argument array. Move to second element of first argument array and repeat. 
#   Then sort results from smallest to largest

# create a product variable and assign it an empty array
# iterate thru first argument array
# - multiple each element by each element of second argument array
# - add to product array
# sort product array

# ----- Code -----
def multiply_all_pairs(list_1, list_2)
  all_pairs = list_1.map do |num_1|
    list_2.map do |num_2|
      num_1 * num_2
    end
  end
  all_pairs.flatten.sort
end

 multiply_all_pairs([2, 4], [4, 3, 1, 2]) #== [2, 4, 4, 6, 8, 8, 12, 16]
 multiply_all_pairs([1, 2], [1, 2, 3]) #== [1, 2, 2, 3, 4, 6]

# Further Exploration
def multiply_all_pairs2(list_1, list_2)
  list_1.product(list_2).map { |num1, num2| num1 * num2 }.sort
end

p multiply_all_pairs2([2, 4], [4, 3, 1, 2])

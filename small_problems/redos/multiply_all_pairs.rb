=begin
----- Problem -----
input: 2 arrays
output: 1 array 
        - contains the product of every pair of numbers that can be formed
rules:
- results should be sorted by increasing value
- assume neither argument is empty array

----- Example -----
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

----- Data Structure -----
arrays 

----- Algorithm -----
initialize products variable
iterate thru first array
- iterate thru second array
  - multipel first array element by second array element and add to product

=end

def multiply_all_pairs(arr1, arr2)
  products = []
  arr1.each do |ele1|
    arr2.each do |ele2|
      products << ele1 * ele2
    end
  end
  products.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
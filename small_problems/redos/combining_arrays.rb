=begin
----- Problem -----
input: 2 arrays
output: 1 array containing all values from argument arrays

rules:
- no duplicate values in output

----- Example -----
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

----- Data Structure -----
arrays

----- Algorithm -----
combine arrays
remove any duplicates
=end

def merge(arr1, arr2)
  (arr1 + arr2).uniq
end

p merge([1, 3, 5], [3, 6, 9]) #== [1, 3, 5, 6, 9]
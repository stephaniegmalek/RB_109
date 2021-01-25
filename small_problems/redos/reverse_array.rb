=begin
----- Problem -----
input: array
output: array with elements in reverse order

rules:
- cannot use `reverse`

----- Examples -----
reverse_it([1, 2, 3, 4, 5]) #== [5, 4, 3, 2, 1]
reverse_it(['a', 'b', 'c', 'd', 'e']) #== ['e', 'd', 'c', 'b', 'a']
reverse_it([1, 2, 5, 7]) #== [7, 5, 2, 1]
reverse_it(['a', 'b', 'd', 'f']) #== ['f', 'd', 'b', 'a']

----- Data Structure ----- 
array

----- Algorithm -----
initalize reversed variable and assign empty array
iterate thru argument 
- put each element in front of reversed array
=end

def reverse_it(array)
  reversed = []
  array.each do |element|
    reversed.prepend(element)
  end
  reversed
end

# p reverse_it([1, 2, 3, 4, 5]) #== [5, 4, 3, 2, 1]
# p reverse_it(['a', 'b', 'c', 'd', 'e']) #== ['e', 'd', 'c', 'b', 'a']
# p reverse_it([1, 2, 5, 7]) #== [7, 5, 2, 1]
# p reverse_it(['a', 'b', 'd', 'f']) #== ['f', 'd', 'b', 'a']
# array = [1, 2, 4, 6, 9]
# array2 = reverse_it(array)
# p array == array2

def reverse_it!(array)
  idx = 0
  idx2 = -1
  while idx < array.size / 2
    array[idx], array[idx2] = array[idx2], array[idx]
    idx += 1
    idx2 -= 1
  end
  array
end

p reverse_it!([1, 2, 3, 4, 5]) #== [5, 4, 3, 2, 1]
# p reverse_it!(['a', 'b', 'c', 'd', 'e']) #== ['e', 'd', 'c', 'b', 'a']
# p reverse_it!([1, 2, 5, 7]) #== [7, 5, 2, 1]
# p reverse_it!(['a', 'b', 'd', 'f']) #== ['f', 'd', 'b', 'a']
# array = [1, 2, 4, 6, 9]
# array2 = reverse_it!(array)
# p array == array2
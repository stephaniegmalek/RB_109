=begin 
----- Problem -----
input: array
output: same array with elements sorted using a bubble sort algorithm

rules:
      Explicit:
      - will sort elements in place aka mutate the argument array
      - can assume that the argument array will contain at least 2 elements
      - bubble sort works by making multiple iterations thru array, comparing
        each pair of consecutive elements, swapping elements so whole list is
        sorted from smallest to largest

----- Examples -----
array1 = [5, 3]
bubble_sort!(array1)
array1 #== [3, 5]

array2 = [6, 2, 7, 1, 4]
bubble_sort!(array2)
array2 #== [1, 2, 4, 6, 7]

array3 = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array3)
array3 #== %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

array4 = [5, 4, 3, 2, 1]
bubble_sort!(array4)
array4 #== [1, 2, 3, 4, 5]

----- Data Structure -----
arrays, integers, strings

----- Algorithm -----
iterate through array
- check each consecutive pair
  - if first bigger than second 
      swap
  
=end

def bubble_sort!(array)
  n = array.length
  loop do
    swapped = false
    1.upto(n - 1) do |index|
      if array[index - 1] > array[index]
        array[index - 1], array[index] = array[index], array[index - 1]
        swapped = true
      end
    end
    n = n - 1
    break if !swapped
  end
  array
end

array1 = [5, 3]
p bubble_sort!(array1)
# array1 #== [3, 5]

array2 = [6, 2, 7, 1, 4]
p bubble_sort!(array2)
# p array2 #== [1, 2, 4, 6, 7]

array3 = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array3)
# array3 #== %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

array4 = [5, 4, 3, 2, 1]
p bubble_sort!(array4)
# array4 #== [1, 2, 3, 4, 5]
=begin
----- Problem -----
input: an array
output: the argument array sorted

rules:
      Explicit:
      - argument array will contain only one type of data
        - all numbers or all strings
      - merge sort is a reclusive sorting algorithm that works by breaking down
        the array elements into nested sub-arrays, then recombining those nested
        sub0arrays in sorted order

----- Examples -----
merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
# [9, 5, 7, 1] ->
# [[9, 5], [7, 1]] ->
# [[[9], [5]], [[7], [1]]] ->
# [[5, 9], [1, 7]] ->
# [1, 5, 7, 9]

merge_sort([5, 3]) == [3, 5]

merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
# [6, 2, 7, 1, 4] ->
# [[6, 2, 7], [1, 4]] ->
# [[[6, 2], [7]], [[1], [4]]] ->
# [[[[6], [2]], [7]], [[1], [4]]] ->
# [[[2, 6], [7]], [1, 4]] ->
# [[2, 6, 7], [1, 4]] ->
# [1, 2, 4, 6, 7]

merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) 
#== %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) 
#== [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

----- Data Structure -----
arrays, nested arrays, integers, strings

----- Algorithm -----
check if input is only 1 element, if yes return

divide input into half, repeat until can't be divided further

merge smaller lists into new list in sort order until 1 list
=end

def merge(array1, array2)
  result = []
  idx2 = 0
  
  array1.each do |value|
    while idx2 < array2.size && array2[idx2] <= value
      result << array2[idx2]
      idx2 += 1
    end
    result << value
  end
  result.concat(array2[idx2..-1])
end

# arr1 = merge([9], [5])
# arr2 = merge([7], [1])
# arr3 = merge(arr1, arr2)
# p arr3

def merge_sort(array)
  return array if array.size == 1
  
  half = array.size / 2.0
  arr1 = array[0...half]
  arr2 = array[half..-1]
  
  arr1 = merge_sort(arr1)
  arr2 = merge_sort(arr2)
  
  merge(arr1, arr2)
end

# p merge_sort([9, 5, 7, 1]) #== [1, 5, 7, 9]
# [9, 5, 7, 1] ->
# [[9, 5], [7, 1]] ->
# [[[9], [5]], [[7], [1]]] ->
# [[5, 9], [1, 7]] ->
# [1, 5, 7, 9]

# p merge_sort([5, 3]) #== [3, 5]

# p merge_sort([6, 2, 7, 1, 4]) #== [1, 2, 4, 6, 7]
# [6, 2, 7, 1, 4] ->
# [[6, 2, 7], [1, 4]] ->
# [[[6, 2], [7]], [[1], [4]]] ->
# [[[[6], [2]], [7]], [[1], [4]]] ->
# [[[2, 6], [7]], [1, 4]] ->
# [[2, 6, 7], [1, 4]] ->
# [1, 2, 4, 6, 7]

# p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) 
#== %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

# p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) 
#== [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

# Further Exploration
# rewrite method so non reclusive

def merge_sort_alt(array)
  return array if array.size == 1
  
  list = array.permutation(1).to_a
  
  loop do
    value1 = list.shift
    value2 = list.shift
    
    merged = merge(value1, value2)
    
    return list.replace(merged) if merged.size == array.size
    
    list.push(merged)
  end
end

p merge_sort_alt([9, 5, 7, 1])
p merge_sort_alt([6, 2, 7, 1, 4])
p merge_sort_alt([5, 3])
p merge_sort_alt(%w(Sue Pete Alice Tyler Rachel Kim Bonnie))
p merge_sort_alt([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46])


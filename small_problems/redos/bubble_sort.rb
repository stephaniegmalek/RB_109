=begin
input: an array (integers or strings)
output: same array but sorted from smallest to largest 

rules:
- mutate the calling array
- assume the array contains at least two elements
- sort using buble sort
  - make multiple passes thru array, comparing each pair of consecutive elements. if
    the first of the two elements is greater than the second, then the two elements
    are swapped. repeat unil a pass is made without performing any swaps

----- Examples -----
array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

----- Data Structure -----
integers, strings, array

----- Algorithm -----
iterate thru argument array until we don't swap anything
- initalize variable swapped and assign to false 
- initalize index variable and assign to 1
- iterate thru array consecutive pairs until end of index
  - if first element (at index - 1) is greater than next element (current index)
    - current element becomes next element and next element become current element
    - increment index by 1
    - reassign variable swapped to true

=end

def bubble_sort!(array)
  loop do 
    swapped = false
    index = 0
    
    while index < array.size - 1 do
      index += 1
      next if array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end
    
    break unless swapped
  end
  array
end

array = [5, 3]
p bubble_sort!(array)
array #== [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
array #== [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
array #== %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
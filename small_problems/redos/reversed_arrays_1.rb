=begin
----- Problem -----
input: array
      - integers, strings
output: same array object
      - elements reversed

rules:
- cannot use `Array#reverse` or `Array#reverse!`
- if input array is empty, return empty array
- mutate the caller, input and output same array object

----- Examples -----
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"]
list == ["c", "d", "e", "b", "a"]

list = ['abc']
reverse!(list) == ["abc"]
list == ["abc"]

list = []
reverse!(list) == []
list == []

----- Data Structure -----
arrays, strings, integers

----- Algorithm -----
mutating
find middle of array
initialize front index
initialize back index
iterate 
- assign first element, last element and vice versay
- continue til hit middle 

non-mutating
iterate thru array and remove first element and add to front of new array
=end

def reverse!(array)
  idx1 = 0
  idx2 = -1
  while idx1 < array.size / 2
    array[idx1], array[idx2] = array[idx2], array[idx1]
    idx1 += 1
    idx2 -= 1
  end
  array
end

# list = [1,2,3,4]
# result = reverse!(list)
# p result #== [4, 3, 2, 1]
# p list == [4, 3, 2, 1]
# p list.object_id == result.object_id

# list = %w(a b e d c)
# p reverse!(list) == ["c", "d", "e", "b", "a"]
# p list == ["c", "d", "e", "b", "a"]

# list = ['abc']
# p reverse!(list) == ["abc"]
# p list == ["abc"]

list = []
p reverse!(list) == []
p list == []

def reverse(array)
  result = []
  loop do
    result.prepend(array.shift)
    break if array.empty?
  end
  result
end


list = %w(a b e d c)
# p reverse(list) #== ["c", "d", "e", "b", "a"]
# p list == ["c", "d", "e", "b", "a"]
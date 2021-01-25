=begin
----- Problem -----
input: an array
      - contains strings, integers etc
output: new array
      - contains same values as argument but in reverse order

rules:
- cannot use `Array#reverse` or `Array#reverse!`
- cannot use the method written in previous exercise
- cannot mutate the caller, return new array object

----- Examples -----
reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true

----- Data Structure -----
integers, strings, arrays

----- Algorithm -----
initialize result variable 
iterate thru array
- add each element to front of result
return result
=end

def reverse(array)
  result = []
  array.each do |element|
    result.prepend(element)
  end
  result
end

p reverse([1,2,3,4]) #== [4,3,2,1]          # => true
p reverse(%w(a b e d c)) #== %w(c d e b a)  # => true
p reverse(['abc']) #== ['abc']              # => true
p reverse([]) #== []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true
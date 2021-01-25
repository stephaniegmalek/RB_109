=begin
----- Problem -----
input: array
output: new array with first element at the end 

rules:
- cannot use `Array#rotate` or `Array#rotate!`
- cannot mutate the caller

----- Examples -----
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

----- Data Structures -----
array, integers, strings 

----- Algorithm -----
create new array with elements 1..-1 + element 0
=end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

# p rotate_array([7, 3, 5, 2, 9, 1]) #== [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) #== ['b', 'c', 'a']
# p rotate_array(['a']) #== ['a']

# x = [1, 2, 3, 4]
# p rotate_array(x) #== [2, 3, 4, 1]   # => true
# p x == [1, 2, 3, 4]

# Further Exploration
# rotate a string instead and then integers

def rotate_string(str)
  rotate_array(str.chars).join
end

p rotate_string('hello')

def rotate_integers(int)
  rotate_string(int.to_s).to_i
end

p rotate_integers(123456)
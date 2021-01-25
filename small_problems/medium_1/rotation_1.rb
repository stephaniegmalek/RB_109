=begin
----- Problem -----
input: an array 
output: new array, first element now at end 

rules:
      Explicit:
      - original array should not be modified
      - do not use `Array#rotate` or `Array#rotate!`
      Implicit:
      - argument array can be made up of strings, numbers etc

----- Examples -----
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

----- Data Structure -----
array 

----- Algorithm -----
make copy of array 
remove first element and put on end

=end

def rotate_array(array)
  array = array.map { |element| element.dup }
  array << array.shift
end

# Alternative
def rotate_array_2(array)
  array[1..-1] + [array[0]]
end

# p rotate_array_2([7, 3, 5, 2, 9, 1]) #== [3, 5, 2, 9, 1, 7]
# p rotate_array_2(['a', 'b', 'c']) #== ['b', 'c', 'a']
# p rotate_array_2(['a']) #== ['a']

# x = [1, 2, 3, 4]
# rotate_array(x) #== [2, 3, 4, 1]   # => true
# x #== [1, 2, 3, 4]                 # => true

# Further Exploration
# convert string into an array and then use rotate_array method
# convert number into a string and then use rotate_string method

def rotate_string(string)
  rotate_array_2(string.chars).join
end

# str = 'hello'
# p rotate_string(str)
# p str
# p rotate_string('launch')
# p rotate_string('school')

def rotate_numbers(number)
  rotate_string(number.to_s).to_i
end

p rotate_numbers(1234)
p rotate_numbers(5678)
p rotate_numbers(12)
num = 246810
p rotate_numbers(num)
p num
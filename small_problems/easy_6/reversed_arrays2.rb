# ----- Problem -----
# input: an array
# output: new array with elements of input array reversed

# rules:
#       Explicit:
#       - can not use `Array#reverse` or `Array#reverse!` built in methods
#       - can not use the method from part 1
#       - do not mutate the caller 

# ----- Examples -----
# reverse([1,2,3,4]) == [4,3,2,1]          # => true
# reverse(%w(a b e d c)) == %w(c d e b a)  # => true
# reverse(['abc']) == ['abc']              # => true
# reverse([]) == []                        # => true

# list = [1, 3, 2]                      # => [1, 3, 2]
# new_list = reverse(list)              # => [2, 3, 1]
# list.object_id != new_list.object_id  # => true
# list == [1, 3, 2]                     # => true
# new_list == [2, 3, 1]                 # => true

# ----- Data Structure -----
# arrays

# ----- Algorithm -----
# create reversed array variable that is empty
# iterate thru input array 
# - add each element of input array to front of new array
# return new reversed array

# ----- Code -----
def reverse(array)
  reversed = []
  array.each { |element| reversed.prepend(element) }
  reversed
end

p reverse([1, 2, 3, 4]) # == [4, 3, 2, 1]
p reverse(%w(a b e d c)) # == %w(c d e b a)
p reverse(['abc']) # == ['abc']  
p reverse([]) # == []

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true

# Further Exploration
def reverse_2(array)
  array.each_with_object([]) { |element, array| array.prepend(element) }
end

p reverse_2([1, 2, 3, 4])
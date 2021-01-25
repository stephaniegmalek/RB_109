=begin 
----- Problem -----
input: array, search value
output: boolean
        - true if array contains search value
        - false if array doesn't contain search value
rules:
- cannot use `Array#include?`

----- Examples -----
include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

----- Data Structure -----
arrays, booleans, integers, nil

----- Algorithm -----
iterate thru array
- compare element to search value 
  - if find match return true

=end

def include?(array, search_value)
  array.each do |value|
    return true if value == search_value
  end
  false
end

p include?([1,2,3,4,5], 3) #== true
p include?([1,2,3,4,5], 6) #== false
p include?([], 3) #== false
p include?([nil], nil) #== true
p include?([], nil) #== false
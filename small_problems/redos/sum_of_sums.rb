=begin
----- Problem -----
input: array
output: integer

rules:
- assume that the array will always contain at least one number

----- Examples -----
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

----- Data Structure -----
array, integers 

----- Algorothm -----
initialize sum variable 
iterate thru array
- add each element to sum
add sum of all elements in array
=end

def sum_of_sums(array)
  sum = 0
  array.map { |value| sum += value }.sum
end

p sum_of_sums([3, 5, 2]) #== (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) #== (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) #== 4
p sum_of_sums([1, 2, 3, 4, 5]) #== 35

def sum_of_sums_alt(array)
  sum_total = 0
  sum_accum = 0
  
  array.each do |num|
    sum_accum += num
    sum_total += sum_accum
  end
  sum_total
end
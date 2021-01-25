# ----- Problem -----
# input: array of integers
# output: array of integers
#   - array has same number of elements and each element has the running total from
#     input array

# ----- Examples -----
# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []

# ----- Data Structure -----
# arrays, integers 

# ----- Algorithm -----
# 1. create new empty array called totals
# 2. create new variable called sum and set to 0
# 3. iterate through each element of the input array
#    - add each element to the sum variable 
#    - add sum variable to totals array
# 4. Return totals array

# ----- Code -----
def running_total(array)
  totals = []
  sum = 0
  array.each do |num|
    sum += num
    totals << sum
  end
  totals
end

p running_total([2, 5, 13])
p running_total([14, 11, 7, 15, 20]) #== [14, 25, 32, 47, 67]
p running_total([3]) #== [3]
p running_total([]) #== []

def running_total2(array)
  sum = 0
  array.each_with_object([]) do |num, arr|
    sum += num
    arr << sum 
  end
end

def running_total3(array)
  array.map.with_index { |_, i| array[0..i].reduce(:+) }
end
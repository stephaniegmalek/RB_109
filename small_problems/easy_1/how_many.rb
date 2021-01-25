# ----- Problem -----
# input: array
# output: each element along side number of occurances
# rules:
#       Explicit Requirements:
#       - word in array are case-sensitive

# ----- Example -----
# vehicles = [
#  'car', 'car', 'truck', 'car', 'SUV', 'truck',
#  'motorcycle', 'motorcycle', 'car', 'truck'
#]

# count_occurrences(vehicles)
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

# ----- Data Structure -----
# array, numbers, hash

# ----- Algorithm -----
# Create empty hash called count

# Iterate through collection of unique vehicles
#   Add vehicle to count hash as key and count of vehicles as value

# Iterate through count hash
#   PRINT each vehicle => count

# ----- Code -----
def count_occurrences(array)
  count = {}
  
  array.uniq.each do |ele|
    ele.downcase!
    count[ele] = array.count(ele)
  end
  
  count.each do |vehicle, count|
    puts "#{vehicle} => #{count}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck',
  'suv', 'CAR'
]

count_occurrences(vehicles)
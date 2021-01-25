# ----- Problem -----
# input: an unordered array
#       - one value of array occurs twice
#       - every other value occurs exactly once
# output: the one duplicate value in input array

# rules:
#       Explicit:
#       - only one value in array that occurs twice

# ----- Examples -----
# find_dup([1, 5, 3, 1]) == 1

# find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
#           38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
#           14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
#           78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
#           89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
#           41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
#           55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
#           85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
#           40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
#           7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73

# find_dup([2, 3, 4, 5, 6, 1, 3, 7, 8]) == 3

# ----- Data Structure -----
# arrays

# ----- Algorithm -----
# iterate thru input array
# - if count of a element is 2, return element

# ----- Code -----
def find_dup(array)
  array.each do |element|
    return element if array.count(element) == 2
  end
end

def find_dup2(array)
  array.find { |element| array.count(element) == 2 }
end

def find_dup3(array)
  checked = []
  array.each do |element|
    return element if checked.include?(element)
    checked << element
  end
end

p find_dup3([1, 5, 3, 1])
p find_dup3([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
            38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
            14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
            78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
            89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
            41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
            55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
            85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
            40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
            7,  34, 57, 74, 45, 11, 88, 67,  5, 58])
p find_dup3([2, 3, 4, 5, 6, 1, 3, 7, 8])
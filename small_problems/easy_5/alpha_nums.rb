# ----- Problem -----
# input: an array of integers between 0 and 19
# output: the input array sorted based on the English words for each number:

#     zero, one, two, three, four, five, six, seven, eight, nine, ten, 
#     eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, 
#     eighteen, nineteen

# rules:
#   Implicit:
#   - the input integers are sorted based on the alphabetical order of the English
#     word for each integer 

# mental model:
# - convert each integer to its word, sort alphabetical, convert back to integer 

# ----- Example -----
# alphabetic_number_sort((0..19).to_a) == [
#  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#  6, 16, 10, 13, 3, 12, 2, 0
# ]

# ----- Data Structure -----
# array, integers, strings

# ----- Algorithm -----
# 1. Create constant array with English words for 0 to 19
# 2. Iterate through input array
#    - use each integer as index for corresponding English words
# 3. sort the array now consisting of English words
# 4. Iterate through sorted array of English words
#    - for each word find matching word in Constant array and replace the word
#      with the matching element's index 

# ----- Code -----
NUMBER_WORDS = %w(
  zero, one, two, three, four, five, six, seven, eight, 
  nine, ten, eleven, twelve, thirteen, fourteen, fifteen,
  sixteen, seventeen, eighteen, nineteen
)

def alphabetic_number_sort(array)
  array.sort_by { |num| NUMBER_WORDS[num] }
end

p alphabetic_number_sort((0..19).to_a) 

# Further explorations
def alpha_number_sort(array)
  num_words = array.map { |num| NUMBER_WORDS[num] }
  sorted_num_words = num_words.sort 
  sorted_num_words.map { |num_word| NUMBER_WORDS.index(num_word) }
end

p alpha_number_sort((0..19).to_a)
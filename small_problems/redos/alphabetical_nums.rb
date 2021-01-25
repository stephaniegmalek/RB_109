=begin
----- Problem -----
input: an array of integers between 0 and 19
output: an array of those integers sorted based on the English word for each number

----- Example -----
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

----- Data Structure -----
array, string, integer

----- Algorithm -----

=end

WORDS = %w( zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven,
            twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen )

def alphabetic_number_sort(array)
  array.sort_by { |a| WORDS[a] }
end

# p alphabetic_number_sort((0..19).to_a) 
# == [ 8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#      6, 16, 10, 13, 3, 12, 2, 0 ]

def alphabetic_number_sort_alt(array)
  num_words = array.map { |num| WORDS[num] }
  sorted_num_words = num_words.sort
  sorted_num_words.map { |word| WORDS.index(word) }
end

p alphabetic_number_sort_alt((0..19).to_a) 
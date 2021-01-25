# ----- Problem-----
# input: an array of strings
# output: an array of strings
#         - same string values but with vowels (a, e, i, o, u) removed

# rules:
#       Implicit:
#       - case insensitive

# ----- Examples -----
# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# ----- Data Structure -----
# arrays, strings

# ----- Algorithm -----
# Iterate through each substring of input array
# - remove letters a, e, i, o, u
# return new array

# ----- Code -----
def remove_vowels(array)
  array.map { |substring| substring.delete("aeiouAEIOU") }
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']


# ----- Problem -----
# write a method that takes an array of strings, and returns an array of the same
# string values, except with the vowels removed.

# input: an array of strings
# output: a new array of strings
#         - same argument string values but with vowels removed

# rules:
#       Implicit:
#       - uppercase / lowercase don't matter
#       - vowels are 'a e i o u'

# ----- Examples -----
# remove_vowels(['green', 'yellow', 'black', 'white'])
# == ['grn', 'yllw', 'blck', 'wht']

# remove_vowels(['hello', 'world'])
# == ['hll', 'wrld']

# remove_vowels(['my', 'name', 'is', 'Bob'])
# == ['my', 'nm', 's', 'Bb']

# ----- Data Structure -----
# array of strings, constant with vowels? or use regex

# ----- Algorithm -----
# mental model:
# - look at each character of string, if vowel remove else do nothing 

# iterate thru each string of argument array and transform each string
# - if string has a vowel, delete

# ----- Code -----
def remove_vowels(strings_array)
  strings_array.map do |string|
    string.delete('aeiou')
  end
end

p remove_vowels(['green', 'yellow', 'black', 'white'])
p remove_vowels(['hello', 'world'])
p remove_vowels(['my', 'name', 'is', 'Bob'])
=begin
Given an array of strings made only from lowercase letters. return an array of all
characters that show up in all strings within the given array (including duplicates)
For example, if a character occurs 3 times in all strings but not 4 times, you need
to include that character three times in the final answer. 

----- Problem -----
input: array of strings
output: array of substrings/characters 

rules:
    Explicit:
    - arguement string made up only of lowercase letters
    - output array contains characters that occur in each string element of argument
      array
    Implicit:
    - if no character occurs in every string element return empty array

----- Examples -----
chars_in_common(['bella', 'label', 'roller']) == ['e', 'l', 'l']
chars_in_common(['cool', 'lock', 'cook']) == ['c', 'o']
chars_in_common(['hello', 'goodbye', 'booya', 'random']) == ['o']
chars_in_common(['aabbaaaa', 'ccddddd', 'eeffee', 'ggrrrrr', 'yyyzzz']) == []

----- Data Structure -----
strings, substrings, arrays

----- Algorithm -----
pull out first string to compare against others
iterate thru each letter of first string 
- iterate thru remaining strings in array
-   if all substrings have the letter keep
-   delete letter from substring

=end

def chars_in_common(array)
  array = array.map { |word| word.dup } # Further Exploration so method is non mutating to array
  
  letters = array.shift.chars
  
  letters.select do |letter|
    array.all? { |substring| substring.sub!(letter, '') }
  end
end

arr = ['bella', 'label', 'roller']
p chars_in_common(arr) #== ['e', 'l', 'l']
p arr
p chars_in_common(['cool', 'lock', 'cook']) #== ['c', 'o']
p chars_in_common(['hello', 'goodbye', 'booya', 'random']) #== ['o']
p chars_in_common(['aabbaaaa', 'ccddddd', 'eeffee', 'ggrrrrr', 'yyyzzz']) #== []

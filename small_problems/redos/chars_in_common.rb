=begin
Given an array of strings made only from lowercase letters. return an array of all
characters that show up in all strings within the given array (including duplicates)
For example, if a character occurs 3 times in all strings but not 4 times, you need
to include that character three times in the final answer. 

----- Problem -----
input: array of strings
output: array of strings -> all chars that show up in all input strings
rules:
- include duplicates in output
- lowercase letters only
- if no char shows up in all input strings, return empty array

----- Examples -----
chars_in_common(['bella', 'label', 'roller']) == ['e', 'l', 'l']

chars_in_common(['cool', 'lock', 'cook']) == ['c', 'o']
chars_in_common(['hello', 'goodbye', 'booya', 'random']) == ['o']
chars_in_common(['aabbaaaa', 'ccddddd', 'eeffee', 'ggrrrrr', 'yyyzzz']) == []

----- Data Structure -----
array, strings

----- Algorithm -----
initialize search_word variable and assign it the first word from input array 

iterate thru each letter of search_word and keep letters that meet criteria 
- iterate thru words of array
  - check if current letter is in all words
    - if yes remove letter from words in array
=end

def chars_in_common(array)
  search_word = array[0]
  
  search_word.chars.select do |letter|
    array.all? { |word| word.sub!(letter, '') }
  end
end

p chars_in_common(['bella', 'label', 'roller']) #== ['e', 'l', 'l']
p chars_in_common(['cool', 'lock', 'cook']) #== ['c', 'o']
# p chars_in_common(['hello', 'goodbye', 'booya', 'random']) == ['o']
# p chars_in_common(['aabbaaaa', 'ccddddd', 'eeffee', 'ggrrrrr', 'yyyzzz']) == []
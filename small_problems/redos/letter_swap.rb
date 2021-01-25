=begin
----- Problem -----
input: string of words separated by spaces
output: new string where the first and last letters of every word are swapped

rules:
- assume every word contains at least one letter and input string will contain at 
  least one word
- each string contains only words and spaces
- if input is single character, return it

----- Examples -----
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

----- Data Structure -----
strings, array

----- Algorithm -----
split string into array of words
iterate thru words
- assign the first char to the last and vice versa

re merge string 
=end

def swap(string)
  words = string.split
  words.each do |word|
    word[0], word[-1] = word[-1], word[0]
  end
  words.join(' ')
end

p swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
p swap('Abcde') #== 'ebcdA'
p swap('a') #== 'a'
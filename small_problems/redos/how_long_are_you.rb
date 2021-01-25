=begin
----- Problem -----
input: string
output: an array of strings
        - each string contain a word from the argument with a space and word length
          appended to it eg "cow 3"
rules:
- assume words in argument string are separated by exactly one space
- assume any substring of non-space characters is a word
  - all non-space characters count towards word count
- if argument empty, return empty array

----- Examples -----
word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []

----- Data Structure -----
strings, array, integers 

----- Algorithm -----
split string into words
iterate thru words
- find size of each word and add to end of word 
=end

def word_lengths(string)
  string.split.map { |word| word + ' ' + word.size.to_s}
end

p word_lengths("cow sheep chicken") #== ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") #==
#  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") #== ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") #==
#  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") #== []
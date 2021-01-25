=begin
----- Problem -----
input: a string
      - made up of 1 or more words
output: an array
      - contains every word from argument string which as a space and word length
        appended to it

rules:
      Explicit:
      - a word is any substring of non-space characters, separated by exactly 
        1 space
      Implicit:
      - words include non-alpha characters and count towards word length

----- Examples -----
word_lengths("cow sheep chicken") #== ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") #==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") #== ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") #==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") #== []

word_lengths("Hello there, world!") #== ["Hello 5", "there, 6", "world! 6"]

----- Data Structure -----
strings, substrings, array

----- Algorithm -----
- initialize variable to contain results
- separate string argument into words
- iterate thru words
  - find word length and add to word
  - add to results variable

=end

def word_lengths(string)
  string.split.map { |word| "#{word} #{word.size}" }
end

p word_lengths("cow sheep chicken") #== ["cow 3", "sheep 5", "chicken 7"]
p word_lengths("baseball hot dogs and apple pie") 
#==  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") 
#== ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") 
#==  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") #== []

p word_lengths("Hello there, world!") #== ["Hello 5", "there, 6", "world! 6"]